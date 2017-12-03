.text
.globl main

main:
	mov x1, #4		// x1 <- 4
	mov x2, #12		// x2 <- 12
	mov x3, #2		// x3 <- 2
	mul x1, x1, x2  // x1 = x1 * x2  <=> x1 = 4 * 12
	udiv x1, x1, x3	// x1 = x1 / x3	 <=> x1 = 48 / 2
	mov x0, x1		// x0 <- x1
	ret				// returns 24
