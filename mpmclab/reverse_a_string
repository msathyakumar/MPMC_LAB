.model small
.stack
.data
strng db "ece","$"
count equ 03h
.code
mov ax,@data
mov ds,ax
mov es,ax
lea si,strng
mov cx,count
add si,cx
dec si
back:mov dl,[si]
mov ah,02h
int 21h
dec si
dec cx
jnz back
int ah,4ch
int 21h
end

