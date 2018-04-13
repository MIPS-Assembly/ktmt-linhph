.data
		prompt1: 	.asciiz "Nhập tên của bạn:"
		prompt2: 	.asciiz "Nhập tuổi của bạn:"
		hoten:		.space 24
		tuoi:		.word 10

.text
.globl main
	main:
		li 		$v0, 4
		la 		$a0, prompt1
		syscall				#in prompt1
		
		li 		$v0, 8
		la		$a0, hoten
		li		$a1, 24
		syscall
		
		
		li 		$v0, 4
		la 		$a0, prompt2
		syscall				#in prompt2
		
		li		$v0, 5
		syscall
		
		
		la 		$a0, tuoi
		sw		$v0, $a0
		li		$v0, 10
		syscall				#end
