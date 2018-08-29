; C Code
; int a = ...; #qualquer valor
; int b = ...;
; int c = …;
; int x = …;
; x = 0;
; if ( a >= 0 && b <= 64 && c > 24 )
; x = 1;

# ---------------------------------

main:
    li a0, 5  # a
    li a1, 10 # b
    li a2, 15 # c
    li a3, 16 # x
    li a3, 0  # x = 0
    
    # temporary values to be compared
    li t0, 64
    li t1, 24

    # comparisons
    blt a0, zero, c1 # a >= 0
    bgt a1, t0, c1   # b <= 64
    beq a2, t1, c1   # c == 24
    blt a2, t1, c1   # c < 24
    li a3, 1         # x = 1

c1: 




