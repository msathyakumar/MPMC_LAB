.model small
.stack
.data
list db 07h,50h,30h,40h,03h
count equ 05h
.code
mov ax,@data
mov ds,ax
mov dx,count-1
l1:mov cx,dx
lea si,offset list
l2:mov al,[si]
cmp al,[si+1]
jl back
xchg al,[si+1]
xchg al,[si]
back:add si,01h
loop l2
dec dx
jnz l1
mov ah,4ch
int 21h
end
