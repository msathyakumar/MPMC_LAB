.model small
.stack
.data
blockdata db 10h,20h,30h,40h,50h
count equ 05h
.code
mov ax,@data
mov ds,ax
mov es,ax
mov si,offset blockdata
mov di,4000h
mov cl,count
cld
rep movsb
mov ah,4ch
int 21h
end
