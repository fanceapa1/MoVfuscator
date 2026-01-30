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
v: .long 26, 12, 3, 56, 3, 18, 27, 35, 15
n: .long 9
frecv: .space 404
formatAfisare: .asciz "Numarul care apare cele mai multe ori: %d\n"
.text
.global main
main:
movl n, %ecx
movl %eax, backup_space+4
movl $v, %eax
movl %eax, %edi
movl backup_space+4, %eax
mov $0, %eax
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl (%edi,%eax,4), %ebx
movl $frecv, %esi
movl (%esi,%ebx,4), %edx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $1, v_src
movl %edx, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %edx
movl %edx, (%esi,%ebx,4)
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %ecx, v_dest
movl $0, %ecx
movb v_dest+0, %cl
movb M + 1180160(%ecx), %al
movb M + 1180416(%ecx), %bl
movb %al, v_dest+0
movl $0, %ecx
movb v_dest+1, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+1
movb %dl, %bl
movl $0, %ecx
movb v_dest+2, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+2
movb %dl, %bl
movl $0, %ecx
movb v_dest+3, %ch
movb %bl, %cl
movb M + 131072(%ecx), %al
movb M + 196608(%ecx), %dl
movb %al, v_dest+3
movb %dl, %bl
movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl v_dest, %ecx
movl $0, %eax
movl $0, %ebx
movl $0, %edx
movl $frecv, %esi
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, %edx
movl %eax, %ebx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl (%esi,%eax,4), %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %eax, v_dest
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
movl v_dest, %eax
movl %ecx, v_temp
movl %ebx, v_val
movl v_temp, %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

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
movl v_dest, %esp

movl %eax, backup_space+4
movl v_val, %eax
movl %eax, (%esp)
movl backup_space+4, %eax
movl %ecx, v_temp
movl $formatAfisare, v_val
movl v_temp, %ecx
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $4, v_src
movl %esp, v_dest

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
movl v_dest, %esp

movl %eax, backup_space+4
movl v_val, %eax
movl %eax, (%esp)
movl backup_space+4, %eax
call printf # de movfuscat
movl %ecx, backup_space
movl %eax, backup_space+4
movl %ebx, backup_space+8
movl %edx, backup_space+12
movl $8, v_src
movl %esp, v_dest

movl $0, %ebx
movl $0, %ecx
movb v_dest+0, %cl
movb v_src+0, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+0
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+1, %cl
movb v_src+1, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+1
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+2, %cl
movb v_src+2, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+2
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl $0, %ecx
movb v_dest+3, %cl
movb v_src+3, %ch
movb M + 0(%ecx), %al
movb M + 65536(%ecx), %dl
movl $0, %ecx
movb %bl, %cl
movb %al, %ch
movb M + 0(%ecx), %al
movb %al, v_dest+3
movb M + 65536(%ecx), %dh
movl $0, %ecx
movb %dh, %cl
movb %dl, %ch
movb M + 0(%ecx), %bl

movl backup_space, %ecx
movl backup_space+4, %eax
movl backup_space+8, %ebx
movl backup_space+12, %edx
movl v_dest, %esp
et_exit:
movl $1, %eax
mov $0, %ebx
int $0x80
