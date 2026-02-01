.data
str1: .ascii "ASC"
str2: .ascii "FMI"
.text
.global main
main:
mov $4, %eax
mov $1, %ebx
mov $str1, %ecx
mov $5, %edx
int $0x80
et_exit:
mov $1, %eax
mov $0, %ebx
int $0x80

