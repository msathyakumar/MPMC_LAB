.model small
.stack
.data
str1 db "ece"
str2 db "csc"
msg1 "str are equal","$"
msg2 "str are not equal","$"
count equ 03h
.code
mov ax,@data
mov ds,ax
mov es,ax
mov cl,count
mov si,offset str1
mov di,offset str2
cld
rep cmpsb
jnz nequal
mov ah,09h
lea dx,msg1
int 21h
jmp exit
nequal:mov ah,09h
lea dx,msg2
int 21h
exit:mov ah,4ch
int 21h
end
