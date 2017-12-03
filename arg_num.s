// arg_num.s
// returns the number of args + 1
// print ret val with `echo $?`
.text

.globl main

main:
	add w0, w0, #1
	ret
