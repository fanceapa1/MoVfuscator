from flask import Flask, render_template, request, jsonify
import subprocess
import os
import sys

app = Flask(__name__)

UPLOAD_FOLDER = 'temp'
INPUT_FILE = 'in.S'
OUTPUT_FILE = 'out.S'

os.makedirs(UPLOAD_FOLDER, exist_ok=True)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/transform', methods=['POST'])
def transform():
    try:
        data = request.get_json()
        input_code = data.get('code', '')
        
        if not input_code:
            return jsonify({
                'success': False,
                'error': 'No input'
            }), 400
    
        with open(INPUT_FILE, 'w', encoding='utf-8') as f:
            f.write(input_code)
    
        try:
            result = subprocess.run(
                [sys.executable, 'movfuscator.py'],
                capture_output=True,
                text=True,
                timeout=30 
            )
            
            if result.returncode != 0:
                error_msg = result.stderr if result.stderr else "Unknown error"
                return jsonify({
                    'success': False,
                    'error': f'Failed: {error_msg}'
                }), 500
            
            if os.path.exists(OUTPUT_FILE):
                with open(OUTPUT_FILE, 'r', encoding='utf-8') as f:
                    output_code = f.read()
            else:
                return jsonify({
                    'success': False,
                    'error': 'Transformation completed but out.S was not created'
                }), 500
            
            return jsonify({
                'success': True,
                'output': output_code,
                'message': 'Transformation completed'
            })
            
        except subprocess.TimeoutExpired:
            return jsonify({
                'success': False,
                'error': 'Transformation timed out'
            }), 500
        except Exception as e:
            return jsonify({
                'success': False,
                'error': f'Error executing: {str(e)}'
            }), 500
            
    except Exception as e:
        return jsonify({
            'success': False,
            'error': f'Server error: {str(e)}'
        }), 500

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=5500)