.section .text
.global _start

_start:
    addi sp, sp, -20

    li   s1, 240        # 0xF0
    li   s2, 65280      # 0xFF00
    li   s3, 4294901760 # 0xFFFF0000

    sw   s3, 0(sp)      # memory: 00 00 FF FF
    sh   s2, 4(sp)      # memory: 00 FF
    sb   s1, 6(sp)      # memory: F0

    lbu  t0, 0(sp)      # 0x00
    lbu  t1, 1(sp)      # 0x00
    lbu  t2, 2(sp)      # 0xFF
    lbu  t3, 3(sp)      # 0xFF
    lbu  t4, 4(sp)      # 0x00
    lbu  t5, 5(sp)      # 0xFF
    lbu  t6, 6(sp)      # 0xF0

    lwu  s4, 0(sp)      # memory: 00 00 FF FF value: 0xFFFF0000
    lhu  s5, 4(sp)      # memory: 00 FF       value: 0xFF00
    lbu  s6, 6(sp)      # memory: F0          value: 0xF0

    li a0, 0           # SUCCESS
    li a7, 93          # exit
    ecall
