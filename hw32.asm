include emu8086.inc



org 100h  ;com program 
again:
mov al, 13h ;EGA graphics
           
mov ah, 0 ;prepare int10h for set graphic mode           
int 10h ;call interrupt 10h(10 in hexa) 

mov cx,dim          ;set the no. of repetitions
mov bx,col1          ;bx holds current column 
    
mov al, 4       ; set color(red) (out of loop because there are not diff colors)
mov ah, 0ch     ;prepare to draw pixel 
mov dx, line1    ;set line to line 
 
lineHor: 
    push cx;save cx on stack
    ;prepare interrupt 10h to draw pixel
    
     ;color of the pixel (white)
    mov cx,bx  ;set column to col
   
    
     
    int 10h
    add dx,dim;go to next horizontal line
    int 10h
    sub dx,dim;restore line
    
    
    inc bx;get to next column
    pop cx  ;restore cx
loop lineHor 
                 
                 
mov cx,dim         ;set the no. of repetitions
mov bx,col1          ;bx holds current column 
    
 
                              
lineVer:  

    mov si, cx         ;save cx(col) on a stack
          ;prepare interrupt 10h to draw pixel

    mov cx,bx      ;set column to col
    
  
    int 10h         ; set pixel  
    add cx,dim
    int 10h
    sub cx,dim
    inc dx      ; get to next column 
    mov cx,si          ;restore cx
loop lineVer  
                              
  


mov al, 13h ;EGA graphics
           
mov ah, 0 ;prepare int10h for set graphic mode           
int 10h ;call interrupt 10h(10 in hexa) 

mov cx,dim         ;set the no. of repetitions
mov bx,col2          ;bx holds current column 
    
mov al,1        ; set color(blue) (out of loop because there are not diff colors)
mov ah, 0ch     ;prepare to draw pixel 
mov dx, line2    ;set line to line 
 
lineHor2: 
    push cx;save cx on stack
    ;prepare interrupt 10h to draw pixel
    
     ;color of the pixel (white)
    mov cx,bx  ;set column to col
   
    
     
    int 10h
    add dx,dim;go to next horizontal line
    int 10h
    sub dx,dim;restore line
    
    
    inc bx;get to next column
    pop cx  ;restore cx
loop lineHor2 
                 
                 
mov cx,dim          ;set the no. of repetitions
mov bx,col2          ;bx holds current column 
    
 
                              
lineVer2:  

    mov si, cx         ;save cx(col) on a stack
          ;prepare interrupt 10h to draw pixel

    mov cx,bx      ;set column to col
    
  
    int 10h         ; set pixel  
    add cx,dim
    int 10h
    sub cx,dim
    inc dx      ; get to next column 
    mov cx,si          ;restore cx
loop lineVer2

mov cx,dim
mov bx,line3 


mov al, 13h ;EGA graphics
           
mov ah, 0 ;prepare int10h for set graphic mode           
int 10h ;call interrupt 10h(10 in hexa) 

mov cx,dim          ;set the no. of repetitions
mov bx,col3          ;bx holds current column 
    
mov al,2        ; set color(green) (out of loop because there are not diff colors)
mov ah, 0ch     ;prepare to draw pixel 
mov dx, line3    ;set line to line 
 
lineHor3: 
    push cx;save cx on stack
    ;prepare interrupt 10h to draw pixel
    
     ;color of the pixel (white)
    mov cx,bx  ;set column to col
   
    
     
    int 10h
    add dx,dim;go to next horizontal line
    int 10h
    sub dx,dim;restore line
    
    
    inc bx;get to next column
    pop cx  ;restore cx
loop lineHor3 
                 
                 
mov cx,dim          ;set the no. of repetitions
mov bx,col3          ;bx holds current column 
    
 
                              
lineVer3:  

    mov si, cx         ;save cx(col) on a stack
          ;prepare interrupt 10h to draw pixel

    mov cx,bx      ;set column to col
    
  
    int 10h         ; set pixel  
    add cx,dim
    int 10h
    sub cx,dim
    inc dx      ; get to next column 
    mov cx,si          ;restore cx
loop lineVer3


mov al, 13h ;EGA graphics
           
mov ah, 0 ;prepare int10h for set graphic mode           
int 10h ;call interrupt 10h(10 in hexa) 

mov cx,dim          ;set the no. of repetitions
mov bx,col4          ;bx holds current column 
    
mov al,5        ; set color(magenta) (out of loop because there are not diff colors)
mov ah, 0ch     ;prepare to draw pixel 
mov dx, line4    ;set line to line 
 
lineHor4: 
    push cx;save cx on stack
    ;prepare interrupt 10h to draw pixel
    
     ;color of the pixel (white)
    mov cx,bx  ;set column to col
   
    
     
    int 10h
    add dx,dim;go to next horizontal line
    int 10h
    sub dx,dim;restore line
    
    
    inc bx;get to next column
    pop cx  ;restore cx
loop lineHor4 
                 
                 
mov cx,dim          ;set the no. of repetitions
mov bx,col4          ;bx holds current column 
    
 
                              
lineVer4:  

    mov si, cx         ;save cx(col) on a stack
          ;prepare interrupt 10h to draw pixel

    mov cx,bx      ;set column to col
    
  
    int 10h         ; set pixel  
    add cx,dim
    int 10h
    sub cx,dim
    inc dx      ; get to next column 
    mov cx,si          ;restore cx
loop lineVer4

mov cx,dim
mov bx,line4 

mov cx,dim
mov bx,line4 


mov al, 13h ;EGA graphics
           
mov ah, 0 ;prepare int10h for set graphic mode           
int 10h ;call interrupt 10h(10 in hexa) 

mov cx,dim          ;set the no. of repetitions
mov bx,col5          ;bx holds current column 
    
mov al,15        ; set color(white) (out of loop because there are not diff colors)
mov ah, 0ch     ;prepare to draw pixel 
mov dx, line5    ;set line to line 
 
lineHor5: 
    push cx;save cx on stack
    ;prepare interrupt 10h to draw pixel
    
     ;color of the pixel (white)
    mov cx,bx  ;set column to col
   
    
     
    int 10h
    add dx,dim;go to next horizontal line
    int 10h
    sub dx,dim;restore line
    
    
    inc bx;get to next column
    pop cx  ;restore cx
loop lineHor5
                 
                 
mov cx,dim          ;set the no. of repetitions
mov bx,col5          ;bx holds current column 
    
 
                              
lineVer5:  

    mov si, cx         ;save cx(col) on a stack
          ;prepare interrupt 10h to draw pixel

    mov cx,bx      ;set column to col
    
  
    int 10h         ; set pixel  
    add cx,dim
    int 10h
    sub cx,dim
    inc dx      ; get to next column 
    mov cx,si          ;restore cx
loop lineVer5

mov cx,dim
mov bx,line5 


mov al,13h
mov ah,0
int 10h

print 'Write the number of the square which has green colour: '  
printn ''
mov ah,1
int 21h

cmp al,51;comparing the input with the ascii code of no 3
    je congrats
    jne fail
    
congrats:
    gotoxy 2,2
    print 'Congratulations, you entered the right number!' 
    int 20h

fail:
    gotoxy 2,2
    print 'You did not enter the right number! Press space to try again, enter to exit.' 
    mov ah,1
    int 21h
    cmp al,32 ;if we press space, the game will start again
       je again 
    cmp al,13 ;if we press enter, the program will return to the operating system
        je exit
exit:
int 20h

dim dw 25
line1 dw 100  ;initial line
col1 dw 100   ;initial column  
line2 dw 50  ;initial line
col2 dw 20   ;initial column
line3 dw 80  ;initial line
col3 dw 70  ;initial column
line4 dw 100  ;initial line
col4 dw 10   ;initial column
line5 dw 100  ;initial line
col5 dw 30   ;initial column