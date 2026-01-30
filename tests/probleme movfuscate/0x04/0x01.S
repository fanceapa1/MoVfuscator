.data
M: .incbin "tables.bin"
backup_space: .space 16
v_eax: .space 4
v_ebx: .space 4
v_ecx: .space 4
v_edx: .space 4
v_esp: .space 4
v_esi: .space 4
v_src: .space 4
v_dest: .space 4
v_val: .space 4
v_res: .space 4
v_temp: .space 4
v_mul_src: .space 4
n: .long 9
v: .long 12, 15, 5, 15, 4, 1, 7, 15, 1
maxim: .long 0
ap: .long 0
.text
.global main
main:
movl n, %ecx
movl $v, %edi
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %edx, maxim
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %edx, maxim
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ecx
movl $v, %edi
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl ap, %ecx
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1179648(%ecx), %al
movb M + 1179904(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, ap
movl backup_space+4, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl ap, %ecx
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1179648(%ecx), %al
movb M + 1179904(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, ap
movl backup_space+4, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl ap, %ecx
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1179648(%ecx), %al
movb M + 1179904(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl %eax, backup_space+4
movl v_dest, %eax
movl %eax, ap
movl backup_space+4, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
movl n, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl %ecx, v_src
movl %ebx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ebx
movl (%edi, %ebx, 4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %ecx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_src+0, %cl
movb v_dest+0, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+0
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+1, %cl
movb v_dest+1, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+1
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+2, %cl
movb v_dest+2, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+2
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_src+3, %cl
movb v_dest+3, %ch
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 131072(%ecx), %al
movb %al, v_dest+3
movb M + 196608(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %ecx
et_exit:
movl $1, %eax
mov $0, %ebx
int $0x80
