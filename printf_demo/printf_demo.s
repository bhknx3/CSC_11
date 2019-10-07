// demonstration of the use of the printf function from C

	.global main

main:
	push {lr}
	bal _loop

_loop:	ldr r0, =string
	ldr r1, =iterations
	ldr r1, [r1]
	bl printf

	ldr r1, =iterations
	ldr r1, [r1]
	subs r1, #1
	ldr r2, =iterations
	str r1, [r2]

	bne _loop
	pop {pc}

.data
string:
	.asciz "Current value of iteration is %d\n"
iterations:
	.word 5
	
