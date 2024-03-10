 org $8000
 ldy #256
 ldx #$8200
 ldaa #$0
 
loop staa $00,x
 inx
 inca
 dey
 bne loop

 ldx #$8200
 
lo ldaa $00,x
 ldab $01,x
 cba
 bhs lm
 bcs loo
 
loo staa $01,x
 stab $00,x
 inx
 clc
 bhs lo
 
lm ldx #$8200
 ldaa $8200
 ldab $8201
 cba
 bhs lf
 bcs lo
 
lf ldaa #0
 bne lf