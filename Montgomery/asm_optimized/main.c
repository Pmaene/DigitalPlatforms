#include <8051.h>

#define SIZE 128
#define n_prime 0xA5

#pragma sdcc_hash +

#define moveResult(i) \
    mov dpl, i \
    mov dph, #(_u >> 8) \
    movx a, @dptr \
    mov dph, #(_m >> 8) \
    movx @dptr, a

volatile __xdata __at (0xFFFE) unsigned char startBrk;
volatile __xdata __at (0xFFFF) unsigned char endBrk;

void fips();

__xdata __at (0x0100) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
__xdata __at (0x0200) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};
__xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};

__xdata __at (0x0400) unsigned char m[SIZE+1];
__xdata __at (0x0500) unsigned char u[SIZE+1];

unsigned short tmp   = 0;
unsigned char i      = 0;
unsigned char j      = 0;

unsigned short t     = 0;

unsigned char stack;

int main() {
    startBrk=1;
    fips();
    endBrk=1;
    return 0;
}

void fips()
{
    // unsigned char n0 = n[0];
    _asm
        mov dpl, 0x00
        mov dph, #(_n >> 8)
        movx a, @dptr
        mov r2, a
    __endasm;

    // unsigned char b0 = b[0];
    _asm
        mov dpl, 0x00
        mov dph, #(_b >> 8)
        movx a, @dptr
        mov r3, a
    __endasm;

    // loop for i = 0 (j loop is not executed)
    _asm
        ; write registers to stack
        mov _stack, r1
        push _stack

        ; load a[0]
        mov dpl, #0x00
        mov dph, #(_a >> 8)
        movx a,@dptr
        mov b, a

        ; load b0
        mov a, r3

        ; a[0]*b[0]
        mul ab

        ; tmp = (unsigned char)(tmp) + a[0]*b0
        add a, _tmp
        mov _tmp, a

        ; t = t + (tmp >> 8)
        mov a, b
        addc a, _t
        mov _t, a
        clr a
        addc a, (_t + 1)
        mov (_t + 1), a

        ; c = (unsigned char)(tmp)*n_prime
        mov a, #0xA5
        mov b, _tmp
        mul ab
        mov r1, a

        ;n[0] ophalen
        mov a, r2

        ; c*n[0]
        mov b, r1
        mul ab

        ; tmp = (unsigned char)(tmp) + c*n0
        add a, _tmp
        mov _tmp, a

        ; m[0] = c
        mov dpl, #0x00
        mov dph, #(_m >> 8)
        mov a,r1
        movx @dptr,a

        ; tmp = t + (tmp >> 8)
        mov a, b
        addc a, _t
        mov _t, a
        clr a
        addc a, (_t + 1)
        mov (_t + 1), a

        ;  t = tmp >> 8;
        mov _tmp, _t
        mov _t, (_t + 1)
        mov (_t + 1), #0x00

        pop _stack
        mov r1, _stack
    _endasm;

    for(i = 1; i < SIZE; i++) {
        stack = i;
        _asm
            mov _j, #0x00

            mov _stack, r1
            push _stack

            00001$:
            ; load a[j]
            mov dpl,_j
            mov dph, #(_a >> 8)
            movx a,@dptr
            mov b, a

            ; load b[i-j]
            mov a, _i
            clr c
            subb a, _j
            mov dpl, a
            mov r4, a
            mov dph, #(_b >> 8)
            movx a,@dptr

            ; a[j]*b[i-j]
            mul ab

            ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
            add a, _tmp
            mov _tmp, a

            ; t = t + (tmp >> 8)
            mov a, b
            addc a, _t
            mov _t, a
            clr a
            addc a, (_t + 1)
            mov (_t + 1), a

            ; load m[j]
            mov dpl, _j
            mov dph, #(_m >> 8)
            movx a,@dptr
            mov b, a

            ; load n[i-j]
            mov dpl, r4
            mov dph, #(_n >> 8)
            movx a,@dptr

            ; m[j]*n[i-j]
            mul ab

            ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
            add a, _tmp
            mov _tmp, a

            ; t = t + (tmp >> 8)
            mov a, b
            addc a, _t
            mov _t, a
            clr a
            addc a, (_t + 1)
            mov (_t + 1), a

            ; for (j = 0; j < i; j++)
            mov a, _i
            inc _j
            subb a, _j
            jnz 00001$

            ; load a[i]
            mov dpl, _i
            mov dph, #(_a >> 8)
            movx a, @dptr
            mov b, a

            ; load b0
            mov a, r3

            ; a[i]*b[0]
            mul ab

            ; tmp = (unsigned char)(tmp) + a[i]*b0
            add a, _tmp
            mov _tmp, a

            ; t = t + (tmp >> 8)
            mov a, b
            addc    a, _t
            mov _t, a
            clr a
            addc a, (_t + 1)
            mov (_t + 1), a

            ; c = (unsigned char)(tmp)*n_prime
            mov a, #0xA5
            mov b, _tmp
            mul ab
            mov r1, a

            ; load n[0]
            mov a, r2

            ; c*n[0]
            mov b, r1
            mul ab

            ; tmp = (unsigned char)(tmp) + c*n0
            add a, _tmp
            mov _tmp, a

            ; m[i] = c
            mov dpl, _i
            mov dph, #(_m >> 8)
            mov a, r1
            movx @dptr,a

            ; tmp = t + (tmp >> 8)
            mov a, b
            addc a, _t
            mov _t, a
            clr a
            addc a, (_t + 1)
            mov (_t + 1), a

            ;  t = tmp >> 8;
            mov _tmp, _t
            mov _t, (_t + 1)
            mov (_t + 1), #0x00

            pop _stack
            mov r1, _stack
        _endasm;

        /*for (j = 0; j < i; j++) {
            tmp = (unsigned char)(tmp) + a[j]*b[i-j];
            t = t + (tmp >> 8);

            tmp = (unsigned char)(tmp) + m[j]*n[i-j];
            t = t + (tmp >> 8);
        }

        tmp = (unsigned char)(tmp) + a[i]*b0;
        t = t + (tmp >> 8);

        c = (unsigned char)(tmp)*n_prime;
        m[i] = c;

        tmp = (unsigned char)(tmp) + c*n0;
        tmp = t + (tmp >> 8);
        t = tmp >> 8;*/
    }

    for(i = SIZE; i < 255; i++) {
        stack = i;
        _asm
            ; i - SIZE + 1
            mov a, _i
            clr c
            subb a, #0x81
            mov _j, a

            00002$:

            ; load a[j]
            mov dpl, _j
            mov dph, #(_a >> 8)
            movx a,@dptr
            mov b, a

            ; load b[i-j]
            clr c
            mov a, _i
            subb a, _j
            mov r4, a
            mov dpl, a
            mov dph, #(_b >> 8)
            movx a,@dptr

            ; a[j]*b[i-j]
            mul ab

            ; tmp = (unsigned char)(tmp) + a[j]*b[i-j]
            add a, _tmp
            mov _tmp, a

            ; t = t + (tmp >> 8)
            mov a, b
            addc a, _t
            mov _t, a
            clr a
            addc a, (_t + 1)
            mov (_t + 1), a

            ; load m[j]
            mov dpl, _j
            mov dph, #(_m >> 8)
            movx a,@dptr
            mov b, a

            ; load n[i-j]
            mov dpl, r4
            mov dph, #(_n >> 8)
            movx a, @dptr

            ; m[j]*n[i-j]
            mul ab

            ; tmp = (unsigned char)(tmp) + m[j]*n[i-j]
            add a, _tmp
            mov _tmp, a

            ; t = t + (tmp >> 8)
            mov a, b
            addc a, _t
            mov _t, a
            clr a
            addc a, (_t + 1)
            mov (_t + 1), a

            ; for (j = i-SIZE+1; j < SIZE; j++)
            inc _j
            mov a, #0x80
            subb a, _j
            jnz 00002$

            ; m[i-SIZE] = (unsigned char)tmp
            mov a, _i
            clr c
            subb a, #0x80
            mov dpl, a
            mov dph, #(_m >> 8)
            mov a, _tmp
            movx    @dptr, a

            ; tmp = (unsigned char)t
            mov _tmp, _t
            mov _t, (_t + 1)
            mov (_t + 1), #0x00
        _endasm;

        /*for (j = i-SIZE+1; j < SIZE; j++) {
            tmp = (unsigned char)(tmp)  + a[j]*b[i-j];
            t = t + (tmp >> 8);

            tmp = (unsigned char)(tmp) + m[j]*n[i-j];
            t = t + (tmp >> 8);
        }

        m[i-SIZE] = (unsigned char)(tmp);
        tmp = (unsigned char)(t);
        t = t >> 8;*/
    }

    _asm
        ; m[127] = (unsigned char)(tmp);
        mov dpl, #0x7F
        mov a, _tmp
        movx @dptr, a

        ; m[SIZE] = (unsigned char)(t);
        mov dpl, #0x80
        mov a, _t
        movx @dptr, a

        ; load m[0]
        mov dpl, #0x00
        movx a, @dptr

        ; tmp = m[0] - n[0]
        clr c
        subb a, r2
        mov _tmp, a
    _endasm;
    /*
    m[SIZE] = tmp;
    tmp = m[0] - n0;
     */

    for(i = 1; i <= SIZE; i++) {
        _asm
            mov _stack, r1
            push    _stack

            ; load m[i]
            mov dpl, _i
            mov dph, #(_m >> 8)
            movx a, @dptr
            mov r1, a

            ; load n[i]
            mov dph, #(_n >> 8)
            movx a, @dptr

            ; m[i] - n[i]
            subb a, r1

            ; u[i] = (unsigned char)tmp;
            mov dph, #(_u >> 8)
            movx @dptr, a

            pop _stack
            mov r1, _stack
        _endasm;
        /*
        tmp = m[i] - n[i] - (tmp >> 8);
        u[i] = tmp;
         */
    }

    /*
    if ((tmp >> 8) == 0) {
        for (i = 0; i < SIZE; i++) {
            m[i] = u[i];
        }
    }
     */
    _asm
        clr a
        addc a, #0x00
        mov _tmp, a

        jnz 00003$
        ret

        00003$:
        moveResult(0x00)
        moveResult(0x01)
        moveResult(0x02)
        moveResult(0x03)
        moveResult(0x04)
        moveResult(0x05)
        moveResult(0x06)
        moveResult(0x07)
        moveResult(0x08)
        moveResult(0x09)
        moveResult(0x0A)
        moveResult(0x0B)
        moveResult(0x0C)
        moveResult(0x0D)
        moveResult(0x0E)
        moveResult(0x0F)
        moveResult(0x10)
        moveResult(0x11)
        moveResult(0x12)
        moveResult(0x13)
        moveResult(0x14)
        moveResult(0x15)
        moveResult(0x16)
        moveResult(0x17)
        moveResult(0x18)
        moveResult(0x19)
        moveResult(0x1A)
        moveResult(0x1B)
        moveResult(0x1C)
        moveResult(0x1D)
        moveResult(0x1E)
        moveResult(0x1F)
        moveResult(0x20)
        moveResult(0x21)
        moveResult(0x22)
        moveResult(0x23)
        moveResult(0x24)
        moveResult(0x25)
        moveResult(0x26)
        moveResult(0x27)
        moveResult(0x28)
        moveResult(0x29)
        moveResult(0x2A)
        moveResult(0x2B)
        moveResult(0x2C)
        moveResult(0x2D)
        moveResult(0x2E)
        moveResult(0x2F)
        moveResult(0x30)
        moveResult(0x31)
        moveResult(0x32)
        moveResult(0x33)
        moveResult(0x34)
        moveResult(0x35)
        moveResult(0x36)
        moveResult(0x37)
        moveResult(0x38)
        moveResult(0x39)
        moveResult(0x3A)
        moveResult(0x3B)
        moveResult(0x3C)
        moveResult(0x3D)
        moveResult(0x3E)
        moveResult(0x3F)
        moveResult(0x40)
        moveResult(0x41)
        moveResult(0x42)
        moveResult(0x43)
        moveResult(0x44)
        moveResult(0x45)
        moveResult(0x46)
        moveResult(0x47)
        moveResult(0x48)
        moveResult(0x49)
        moveResult(0x4A)
        moveResult(0x4B)
        moveResult(0x4C)
        moveResult(0x4D)
        moveResult(0x4E)
        moveResult(0x4F)
        moveResult(0x50)
        moveResult(0x51)
        moveResult(0x52)
        moveResult(0x53)
        moveResult(0x54)
        moveResult(0x55)
        moveResult(0x56)
        moveResult(0x57)
        moveResult(0x58)
        moveResult(0x59)
        moveResult(0x5A)
        moveResult(0x5B)
        moveResult(0x5C)
        moveResult(0x5D)
        moveResult(0x5E)
        moveResult(0x5F)
        moveResult(0x60)
        moveResult(0x61)
        moveResult(0x62)
        moveResult(0x63)
        moveResult(0x64)
        moveResult(0x65)
        moveResult(0x66)
        moveResult(0x67)
        moveResult(0x68)
        moveResult(0x69)
        moveResult(0x6A)
        moveResult(0x6B)
        moveResult(0x6C)
        moveResult(0x6D)
        moveResult(0x6E)
        moveResult(0x6F)
        moveResult(0x70)
        moveResult(0x71)
        moveResult(0x72)
        moveResult(0x73)
        moveResult(0x74)
        moveResult(0x75)
        moveResult(0x76)
        moveResult(0x77)
        moveResult(0x78)
        moveResult(0x79)
        moveResult(0x7A)
        moveResult(0x7B)
        moveResult(0x7C)
        moveResult(0x7D)
        moveResult(0x7E)
        moveResult(0x7F)
        ret
    _endasm;
}
