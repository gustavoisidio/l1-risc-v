main:
    li a0, 5  # a
    li a1, 10 # b
    li a2, 15 # c
    li a3, 16 # x
    add a3, zero, zero
    bge a0, zero, c1 # a >= 0

c1: # a >= 0
    li t0, 64 # t0 == 64
    beq a1, t0, c2 # b == 64
    blt a1, t0, c2 # b < 64

c2: # b == 64 ou b < 64
	li t1, 24 # t1 == 24
    beq a2, t1, c5 # c == 24
    # c != 24
    li t1, 24 # t1 == 24
    blt a2, t1, c5 # c < 24
    # c > 24
	li t2, 1
    add a3, zero, t2 # x = 1

c5: # c == 24 -> Não me interessa









