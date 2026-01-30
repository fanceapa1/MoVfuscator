const inputEditor = document.getElementById('inputEditor');
const outputEditor = document.getElementById('outputEditor');
const convertBtn = document.getElementById('convertBtn');
const downloadBtn = document.getElementById('downloadBtn');
const fileInput = document.getElementById('fileInput');
const errorLogContainer = document.getElementById('errorLogContainer');
const errorLogContent = document.getElementById('errorLogContent');


function showError(message) {
    errorLogContent.textContent = message;
    errorLogContainer.style.display = 'block';
}

window.hideError = function() {
    errorLogContainer.style.display = 'none';
    errorLogContent.textContent = '';
}

fileInput.addEventListener('change', (e) => {
    if (e.target.files.length > 0) {
        const file = e.target.files[0];
        const reader = new FileReader();
        
        reader.onload = (e) => {
            inputEditor.value = e.target.result;
            hideError();
        };
        
        reader.onerror = () => {
            showError('Error reading file.');
        };
        
        reader.readAsText(file);
        e.target.value = ''; 
    }
});

convertBtn.addEventListener('click', async () => {
    const inputCode = inputEditor.value.trim();
    
    hideError();
    outputEditor.value = '';
    downloadBtn.disabled = true;

    if (!inputCode) {
        showError('Please paste code or upload a file before converting.');
        return;
    }

    convertBtn.disabled = true;
    const originalBtnText = convertBtn.innerHTML;
    convertBtn.innerHTML = '<span class="spinner"></span> PROCESSING';

    try {
        const response = await fetch('/transform', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({ code: inputCode })
        });

        const result = await response.json();

        if (result.success) {
            outputEditor.value = result.output;
            downloadBtn.disabled = false; 
        } else {
            showError(result.error || 'Unknown error');
        }
    } catch (error) {
        showError(`Network error: ${error.message}`);
    } finally {
        convertBtn.disabled = false;
        convertBtn.innerHTML = originalBtnText;
    }
});

downloadBtn.addEventListener('click', () => {
    const outputCode = outputEditor.value;
    
    if (!outputCode) return;

    const blob = new Blob([outputCode], { type: 'text/plain' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    
    a.href = url;
    a.download = 'out.S';
    document.body.appendChild(a);
    a.click();
    
    document.body.removeChild(a);
    URL.revokeObjectURL(url);
});