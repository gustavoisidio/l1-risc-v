main: 
    li a0, 5
    li a1, 4
    li a2, 12
    add a2, zero, a0
    beq a1, a2, u4
    sub a2, a0, a1
  
u4: 
	sub a2, a1, a0
