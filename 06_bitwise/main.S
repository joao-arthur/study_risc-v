.section .text
.global _start

_start:
    li t0, 1 # 0b001
    li t1, 2 # 0b010
    li t2, 3 # 0b011
    li t3, 4 # 0b100
    li t4, 5 # 0b101
    li t5, 6 # 0b110
    li t6, 7 # 0b111

    and s1, t4, t5 # 0b101 & 0b110 = 0b100
    or  s2, t3, t2 # 0b100 | 0b011 = 0b111
    xor s3, t2, t5 # 0b011 ^ 0b110 = 0b101

    li s4, 3
    li s5, -9827
    li s6, -9827

    slli s4, s4, 1
    slli s4, s4, 1
    slli s4, s4, 1
    slli s4, s4, 1

    srli s5, s5, 1
    srli s5, s5, 1
    srli s5, s5, 1
    srli s5, s5, 1

    srai s6, s6, 1
    srai s6, s6, 1
    srai s6, s6, 1
    srai s6, s6, 1

    li a0, 0  # EXIT_SUCCESS
    li a7, 93 # exit
    ecall
