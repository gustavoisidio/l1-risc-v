main:
    li a0, 5  # a
    li a1, 10 # b
    li a2, 15 # c
    li a3, 16 # x
    add a3, zero, 0
    bge a0, 0, c1 # a >= 0

c1: # a >= 0
    beq a1, 64, c2 # b == 64
    blt a1, 64, c2 # b < 64

c2: # b == 64 ou b < 64
    beq a2, 24, c5 # c == 24
    # c != 24
    blt a2, 24, c5 # c < 24
    # c > 24
    add a3, zero, 1 # x = 1

c5: # c == 24 -> Não me interessa