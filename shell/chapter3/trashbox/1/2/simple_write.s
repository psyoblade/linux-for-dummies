	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 15	sdk_version 10, 15
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$0, -4(%rbp)
	movl	$1, %edi
	leaq	L_.str(%rip), %rsi
	movl	$18, %edx
	callq	_write
	cmpq	$18, %rax
	je	LBB0_2
## %bb.1:
	movl	$2, %edi
	leaq	L_.str.1(%rip), %rsi
	movl	$46, %edx
	callq	_write
	movq	%rax, -160(%rbp)        ## 8-byte Spill
LBB0_2:
	xorl	%edi, %edi
	leaq	-144(%rbp), %rsi
	movl	$128, %edx
	callq	_read
	movl	%eax, %edi
	movl	%edi, -148(%rbp)
	cmpl	$-1, -148(%rbp)
	jne	LBB0_4
## %bb.3:
	movl	$2, %edi
	leaq	L_.str.2(%rip), %rsi
	movl	$26, %edx
	callq	_write
	movq	%rax, -168(%rbp)        ## 8-byte Spill
LBB0_4:
	leaq	-144(%rbp), %rsi
	movslq	-148(%rbp), %rdx
	movl	$1, %edi
	callq	_write
	movslq	-148(%rbp), %rdx
	cmpq	%rdx, %rax
	je	LBB0_6
## %bb.5:
	movl	$2, %edi
	leaq	L_.str.3(%rip), %rsi
	movl	$27, %edx
	callq	_write
	movq	%rax, -176(%rbp)        ## 8-byte Spill
LBB0_6:
	xorl	%edi, %edi
	callq	_exit
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Here is some data\n"

L_.str.1:                               ## @.str.1
	.asciz	"A write error has occurred on file descriptor 1\n"

L_.str.2:                               ## @.str.2
	.asciz	"A read error has occurred\n"

L_.str.3:                               ## @.str.3
	.asciz	"A write error has occurred\n"


.subsections_via_symbols
