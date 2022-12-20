	.file	"file.c"
	.text
	.globl	test
	.type	test, @function
test:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movl	$1, -4(%rbp)
	movl	$2, -8(%rbp)
	movl	$3, -12(%rbp)
	movl	$4, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	test, .-test
	.section	.rodata
.LC0:
	.string	"in main "
.LC1:
	.string	"r+"
.LC2:
	.string	"test.txt"
.LC3:
	.string	"%d \n"
.LC4:
	.string	"child pid = %d \n"
.LC5:
	.string	"this is child, fp = %p \n"
.LC6:
	.string	"child %s \n"
.LC7:
	.string	"father pid = %d \n"
.LC8:
	.string	"this is father, fp = %p \n"
.LC9:
	.string	"father %s \n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$304, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	-284(%rbp), %ecx
	movl	-288(%rbp), %edx
	movl	-292(%rbp), %esi
	movl	-296(%rbp), %eax
	movl	%eax, %edi
	call	test
	leaq	.LC0(%rip), %rdi
	call	puts@PLT
	leaq	.LC1(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -280(%rbp)
	call	fork@PLT
	movl	%eax, -300(%rbp)
	movl	-300(%rbp), %eax
	testl	%eax, %eax
	jne	.L3
	leaq	-300(%rbp), %rax
	movq	%rax, %rdi
	call	wait@PLT
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	call	getpid@PLT
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-280(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC6(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L3:
	call	getpid@PLT
	movl	%eax, %esi
	leaq	.LC7(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-280(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-280(%rbp), %rdx
	leaq	-272(%rbp), %rax
	movl	$255, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-272(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L4:
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L5
	call	__stack_chk_fail@PLT
.L5:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
