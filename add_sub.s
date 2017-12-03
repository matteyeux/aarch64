// addition and substraction
// run `echo $?` to print returned val
.text
.globl main

main: 
	mov x1, xzr 	// x1 <- xzr (=0)
	add x1, x1, #12	// x1 <- x1 + 12 <=> x1 = 0 + 12
	sub x2, x1, #6	// x2 <- x1 - 6 <=> x2 = 12 - 6
	mov x0, x2		// x0 <- x2
	ret				// returns 6

