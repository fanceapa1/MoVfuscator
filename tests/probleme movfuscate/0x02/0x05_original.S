.data
.text
.global main
main:
mov $0x2, %eax
mov $0x00000001, %edx
mov $2, %ebx
div %ebx
et_exit:
movl $1, %eax
xor %ebx, %ebx
int $0x80