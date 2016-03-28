START
MOV BP, 0
MOV SP, 12
CALL main
HALT

//Code Gen for add1 function
add1:
PUSH BP
MOV BP, SP
MOV R0, 1
PUSH R0
MOV R0, -3
PUSH R0
MOV R0, -4
PUSH R0
MOV R0, BP
MOV R1, 1
ADD R0, R1
MOV R1, BP
MOV R2, -4
ADD R1, R2
MOV R1, [R1]
MOV R2, BP
MOV R3, -3
ADD R2, R3
MOV R2, [R2]
ADD R1, R2
MOV [R0], R1
MOV R0, BP
MOV R1, -4
ADD R0, R1
MOV R1, 10
MOV [R0], R1
//Printing for return
MOV R1, BP
MOV R2, 1
ADD R1, R2
MOV R1, [R1]
MOV R0, BP
MOV R2, 2
SUB R0, R2
MOV [R0], R1
POP R0
MOV R1, BP
MOV R2, -4
ADD R1, R2
MOV [R1], R0
POP R0
MOV R1, BP
MOV R2, -3
ADD R1, R2
MOV [R1], R0
POP R0
MOV R1, BP
MOV R2, 1
ADD R1, R2
MOV [R1], R0
POP BP
RET

//Code Gen for main function
main:
PUSH BP
MOV BP, SP
MOV R0, 1
PUSH R0
MOV R0, 0
MOV R1, 0
MOV [R0], R1
L1:
MOV R0, 0
MOV R0, [R0]
MOV R1, 5
LT R0, R1
JZ R0, L2
MOV R0, 2
MOV R1, 0
MOV R1, [R1]
ADD R0, R1
IN R1
MOV [R0], R1
MOV R0, 0
MOV R1, 0
MOV R1, [R1]
MOV R2, 1
ADD R1, R2
MOV [R0], R1
JMP L1
L2:
MOV R0, 1
IN R1
MOV [R0], R1
MOV R0, BP
MOV R1, 1
ADD R0, R1
MOV R1, 9
MOV [R0], R1
MOV R0, 1
PUSH R0
//Pushing the arguments
MOV R1, 2
MOV R2, 1
MOV R2, [R2]
ADD R1, R2
MOV R1, [R1]
PUSH R1
MOV R1, BP
MOV R2, 1
ADD R1, R2
MOV R1, [R1]
PUSH R1
//Pushing arguments done
PUSH R1
CALL add1
POP R1
//Popping off arguments
POP R2
POP R2
//Popping arguments done
POP R0
MOV [R0], R1
//Code for WRITE
MOV R0, 1
MOV R0, [R0]
OUT R0
//Printing for return
MOV R1, 0
MOV R0, BP
MOV R2, 2
SUB R0, R2
MOV [R0], R1
POP R0
MOV R1, BP
MOV R2, 1
ADD R1, R2
MOV [R1], R0
POP BP
RET

