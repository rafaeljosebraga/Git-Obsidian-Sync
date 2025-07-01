podemos passar 1 para o `rax` onde vamos requisitar para que o computador escreva na tela uma sequencia de caracteres passando um endereço e uma quantidade de caracteres(Bytes). -> fato é


segue a ideia base:
```assembly
.equ STDOUT, 1
.equ SYS_WRITE, 1
.equ SYS_EXIT, 60
.section .data
  str : .string "olá mundo\n"
  strLen : .quad 11
.section .text
.section .text
.globl _start
_start:
  pushq %rbp
  movq %rsp, %rbp
  movq $SYS_WRITE, %rax
  movq $STDOUT, %rdi
  movq $str, %rsi
  movq strLen, %rdx
  syscall
  popq %rbp
  movq $60, %rax
  syscall
```