.model small
.stack
.data
.code
mov ax,1234h
mov bx,5678h
add ax,bx
mov cx,1234h
mov dx,5678h
adc cx,dx
int 21h
end
