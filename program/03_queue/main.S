# RISC-V simple counter program
#
# Stanislav Zhelnio, 2020
#

            .text

start:      li a0, 65535        # t0 = 1
counter:    sw a0, 0(a0)             # push t0
            addi a0, a0, 2           # t0 = t0 + 2  
            sw a0, 0(a0)             # push t0
            addi a0, a0, 2           # t0 = t0 + 2  
            sw a0, 0(a0)             # push t0
            addi a0, a0, 2           # t0 = t0 + 2
            sw a0, 0(a0)             # push t0
            addi a0, a0, 2           # t0 = t0 + 2
            sw a0, 0(a0)             # push t0
            lw a0, 0(a0)             # pop t0
            lw a0, 0(a0)             # pop t0
            lw a0, 0(a0)             # pop t0
            lw a0, 0(a0)             # pop t0
            lw a0, 0(a0)             # pop t0
            beq zero, zero, counter  # if 0 == 0 then counter
