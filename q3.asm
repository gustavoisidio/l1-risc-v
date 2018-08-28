    li a0, 0
    li a1, 20
    li a2, 14
    li a4, 0
    li a0, 0

    # aux register
    li t0, 1
    li t1, 10

f1: # if (a1 < a2)
    bge a1, a2, f2
    li x3, 15 # x13 = 15
    add x4, x4, t0 # x14 ++
    beq t0, t0, f3
f2: # else
    li a3, 13 # x13 = 13
    add a2, a2, t0 # x12++

f3: # fim do for
    add a0, a0, t0
    blt a0, t1, f1

    # a2 > a4
    blt a2, a4, f4
    beq a2, a4, f4
    li a5, 1

f4:




















