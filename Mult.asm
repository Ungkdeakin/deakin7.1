//multiplicant = R0
//multiplier = R1
//
//if : multiplier == 0: multiplicant = 0
//result = multiplicant
//
//Loop:
//result = result + multiplicant
//multiplier = multiplier - 1
//if : multiplier > 1 : goto Loop
//

// Multiplies the values of R1 and R2.

     @R0
     D=M
     @multiplicant
     M=D 		// multiplicant = R0

     @R1
     D=M
     @multiplier
     M=D 		//multiplier = R1

     @if
     D;JGT
     @0
     D=A
     @R2
     M=D 		
     @END
     0;JMP//if multiplier = 0, multiplicant = 0

(if)
     @multiplicant
     D=M
     @result
     M=D 		// result = multiplicant

(loop)
     @multiplier
     D=M
     @STOP
     D;JEQ 		//if multiplier = 0, stop it 

     @result
     D=M
     @multiplicant
     D=D+M
     @result
     M=D  		//result = multiplicant + result

     @multiplier
     D=M
     D=D-1
     M=D 		//multiplier --

    @loop
    0;JMP

(STOP)
    @result
    D=M
    @multiplicant
    D=D-M
    @R2
    M=D
    @0
    D=A
    @result
    M=D


(END)
   @END
   0;JMP
