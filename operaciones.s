.data # Data declaration section
msg1: .asciiz "Ingresa un numero: "
msg2: .asciiz "ngresa otro numero: "
suma: .asciiz "La suma es: "
resta: .asciiz "La resta es: "
multi: .asciiz "La multiplicacion es: "
divi: .asciiz "La divicion es: "
salto: .asciiz "\n"
.text
main:

la $a0, msg1
li $v0, 4
syscall

li $v0, 6
syscall
mov.s $f1,$f0

la $a0, msg2
li $v0, 4
syscall

li $v0, 6
syscall
mov.s $f2,$f0

#suma.............
la $a0, suma
li $v0, 4
syscall

add.s $f12, $f1, $f2
li $v0, 2
syscall

la $a0,salto
li $v0,4
syscall

#resta.............
la $a0, resta
li $v0, 4
syscall


sub.s $f12, $f1, $f2
li $v0, 2
syscall

la $a0,salto
li $v0,4
syscall

#multi...............
la $a0, multi
li $v0, 4
syscall

mul.s $f12, $f1, $f2
li $v0, 2
syscall

la $a0,salto
li $v0,4
syscall

#divi............
la $a0, divi
li $v0, 4
syscall


div.s $f12, $f1, $f2
li $v0, 2
syscall



li $v0,10
syscall