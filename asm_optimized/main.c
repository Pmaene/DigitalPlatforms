// Result at 0300:0380

#include <8051.h>

volatile __xdata __at (0xFFFE) unsigned char startBrk;
volatile __xdata __at (0xFFFF) unsigned char endBrk;

#define SIZE 128
#define n_prime 0xA5

__xdata __at (0x0000) unsigned char n[SIZE] = {0xD3,0x55,0xA4,0x5F,0x57,0xF3,0xF9,0x3E,0xCF,0x84,0x6D,0xFF,0x20,0xC1,0xAE,0x12,0xCF,0xF1,0x00,0x66,0x45,0xE2,0x34,0x61,0x27,0xF2,0x57,0xB3,0x42,0x21,0x80,0x95,0xAB,0x15,0xA2,0x1D,0x53,0xB2,0x27,0xE6,0x56,0x93,0x27,0xAF,0xC2,0xEE,0x2B,0x2F,0x9A,0xAE,0x6A,0x09,0xE5,0x7F,0xAE,0x7D,0x2B,0xDD,0x58,0x2F,0x87,0x70,0x05,0x1F,0xF8,0xBD,0x0B,0xE0,0xFD,0xF1,0x81,0x60,0xBF,0xD2,0xFE,0x8F,0x7B,0xB9,0xA9,0xA4,0x6A,0x0A,0xA3,0xA3,0x70,0x22,0xBF,0x4C,0x1B,0xB0,0x41,0x24,0x4C,0x3A,0x08,0xEC,0xF4,0x91,0xFF,0x93,0x8D,0xFC,0xFA,0x4C,0x26,0x2D,0xD2,0xE9,0xFC,0x76,0xB1,0x67,0x5E,0x24,0x9E,0x31,0x66,0x5D,0x98,0x4C,0x0D,0x79,0x81,0x76,0xAC,0x1D,0xE2,0xCA};
__xdata __at (0x0100) unsigned char a[SIZE] = {0xFF,0x7F,0x14,0x64,0x47,0x68,0xC2,0xB6,0x27,0x32,0x63,0x2C,0xB0,0xC3,0x95,0x13,0xC5,0x7E,0x17,0x22,0xF3,0x7C,0x2D,0xE8,0x13,0x47,0x5E,0x15,0x4E,0xEF,0x83,0x81,0xDF,0xC3,0x47,0xD3,0x60,0xBB,0x8B,0x3E,0xB6,0x35,0xB1,0x6E,0xD1,0xD5,0xDA,0x6F,0x28,0x16,0x2C,0x74,0x36,0xF9,0x04,0x79,0xF9,0x76,0xE2,0xCC,0xA4,0x82,0xA7,0xA4,0x68,0x4E,0x24,0xA6,0xC1,0x58,0x68,0x24,0x58,0xDC,0x14,0xF9,0xFF,0x4D,0xA1,0xEF,0x53,0xA3,0xC2,0x84,0x1B,0x81,0x16,0x6C,0xDD,0xE3,0xDB,0xA8,0x03,0x8F,0xF2,0x31,0xFD,0x94,0x5D,0x26,0x13,0xC6,0x68,0xB4,0x0D,0xCD,0xF1,0xB8,0x66,0x0D,0x5D,0x3B,0x2F,0xC4,0x4A,0xD1,0x0B,0x36,0xC6,0x10,0x1A,0x2F,0x72,0xD1,0xBB,0x15,0x29,0xCA};
__xdata __at (0x0200) unsigned char b[SIZE] = {0xE1,0x8A,0x03,0xDB,0xE0,0xD9,0xF6,0x55,0xB6,0x27,0x0A,0x28,0xF0,0x5E,0x74,0x7F,0xE6,0x9F,0x4C,0xFB,0x26,0x8C,0x9E,0x87,0x83,0x22,0xF2,0x75,0xD2,0xB3,0x61,0xA2,0x9D,0x50,0x71,0x5E,0xC9,0xDD,0xDD,0x74,0x0A,0x3C,0xC0,0x30,0x3E,0xE5,0x20,0x02,0xB3,0x12,0x4F,0xAB,0x60,0x27,0x07,0x17,0xDD,0x00,0xC2,0xE1,0xBC,0x04,0xAE,0x21,0x38,0xCA,0xAA,0x8F,0x74,0xD5,0x02,0x10,0x15,0x87,0x58,0x08,0xCC,0x9A,0x42,0xBD,0x02,0x97,0xCE,0x2B,0x39,0x38,0x99,0xAC,0x81,0xBB,0xC3,0xFF,0xBC,0xC1,0xB8,0xE1,0x24,0x8D,0xC5,0x20,0x89,0x98,0x0B,0x50,0xB1,0x16,0x9A,0x2D,0x6E,0x5A,0x7B,0x2F,0xD4,0x92,0xA1,0xAA,0xA6,0xE5,0xA6,0xD2,0x0D,0x0B,0xB7,0xB2,0x25,0x23,0x23,0xBE};

__xdata __at (0x0300) unsigned char m[SIZE + 1];
__xdata __at (0x0400) unsigned char u[SIZE + 1];

unsigned short tmp  = 0;
unsigned short i    = 0;
unsigned short j    = 0;

unsigned char  c    = 0;
unsigned short t    = 0;

unsigned char  stack;
unsigned char  n0;
unsigned char  b0;

int main() {
    startBrk=1;
    
    //unsigned char n0    = n[0];
    _asm
        mov dpl, 0x00
        mov dph,#(_n >> 8)
        movx a,@dptr
        mov r2, a
    __endasm;

    //unsigned char b0    = b[0];
    _asm
        mov dpl, 0x00
        mov dph,#(_b >> 8)
        movx a,@dptr
        mov r3, a
    __endasm;

    // do the loop for i = 0
    __asm
        mov _stack, r1
        push _stack

        ; load a[0]
        mov dpl, #0x00
        mov dph, #(_a >> 8)
        movx a, @dptr
        mov b, a

        ; load b0
        mov a, r3

        ; a[0]*b0
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

        ; m[0] = c
        mov dpl, #0x00
        mov dph, #(_m >> 8)
        mov a, r1
        movx @dptr, a

        ; c*n0
        mov b, r2
        mov a, r3
        mul ab

        ; tmp = (unsigned char)(tmp) + c*n0
        add a, _tmp
        mov _tmp, a

        ; tmp = t + (tmp >> 8)
        mov a, b
        addc a, _tmp
        mov _tmp, a
        clr a
        addc a, (_tmp + 1)
        mov (_tmp + 1), a

        ;  t = tmp >> 8;
        mov _t, (_tmp + 1)
        mov (_t + 1), #0x00

        pop _stack
        mov r1, _stack
    __endasm;

    for (i = 1; i < SIZE; i++) {
        __asm
            mov _stack, r1
            push _stack

            mov _j, #0x00

            00001$:
                ; load a[j]
                mov dpl, _j
                mov dph, #(_a >> 8)
                movx a, @dptr
                mov b, a

                ; load b[i-j]
                mov a, _i
                clr c
                subb a, _j
                mov dpl, a
                mov dph, #(_b >> 8)
                movx a, @dptr

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
                movx a, @dptr
                mov b, a

                ; load n[i-j]
                mov a, _i
                clr c
                subb a, _j
                mov dpl, a
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

                ; for (j = 1; i < j; j++)
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

            ; a[i]*b0
            mul ab

            ; tmp = (unsigned char)(tmp) + a[i]*b0
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

            ; m[i] = c
            mov dpl, _i
            mov dph, #(_m >> 8)
            mov a, r1
            movx @dptr, a

            ; c*n0
            mov b, r2
            mov a, r3
            mul ab

            ; tmp = (unsigned char)(tmp) + c*n0
            add a, _tmp
            mov _tmp, a

            ; tmp = t + (tmp >> 8)
            mov a, b
            addc a, _tmp
            mov _tmp, a
            clr a
            addc a, (_tmp + 1)
            mov (_tmp + 1), a

            ;  t = tmp >> 8;
            mov _t, (_tmp + 1)
            mov (_t + 1), #0x00

            pop _stack
            mov r1, _stack
        __endasm;
    }

    for (i = SIZE; i < 2*SIZE; i++) {
        __asm
            ; j = i-SIZE+1
            mov a, _i
            subb a, #0x80
            inc a
            mov _j, a
            
            00002$:
                ; load a[j]
                mov dpl, _j
                mov dph, #(_a >> 8)
                movx a, @dptr
                mov b, a

                ; load b[i-j]
                mov a, _i
                clr c
                subb a, _j
                mov dpl, a
                mov dph, #(_b >> 8)
                movx a, @dptr

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
                movx a, @dptr
                mov b, a

                ; load n[i-j]
                mov a, _i
                clr c
                subb a, _j
                mov dpl, a
                mov dph, #(_n >> 8)
                movx a, @dptr

                ; a[j]*b[i-j]
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
                mov a, #0x80
                inc _j
                subb a, _j
                jnz 00002$
        __endasm;

        m[i-SIZE] = (unsigned char)(tmp);
        tmp = (unsigned char)(t);
        t = t >> 8;
    }

    m[SIZE] = tmp;
    tmp = m[0] - n0;

    for (i = 0; i < SIZE; i++) {
        tmp = m[i] - n[i] - (tmp >> 8);
        u[i] = tmp;
    }

    if ((tmp >> 8) == 0) {
        for (i = 0; i < SIZE; i++) {
            m[i] = u[i];
        }
    }

    endBrk=1;

    return 0;
}

