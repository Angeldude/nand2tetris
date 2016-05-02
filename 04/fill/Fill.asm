// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

    @SCREEN
    D=A
    @pointer
    M=D
      
(BLACK)
    @KBD
    D=M
    @WHITE
    D;JEQ  
    @pointer
    D=M
    @24576
    D=D-A
    @BLACK
    D;JEQ
    
    @0
    D=-1
    @pointer
    A=M
    M=D

    @pointer
    M=M+1
    @BLACK
    0;JMP
    
(WHITE)
    @KBD
    D=M
    @BLACK
    D;JGT
    
    D=M
    @SCREEN
    D=D-M
    @WHITE
    D;JEQ
    
    @0
    D=A
    @pointer
    A=M
    M=D

    @pointer
    M=M-1
    @WHITE
    0;JMP