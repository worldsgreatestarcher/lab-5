    .global main

    .text

main: 
#write prompt to enter number
         mov   $1, %rax
         mov   $1, %rdi
         mov   $prompt, %rsi
         mov   $23, %rdx
         syscall

#read input number
         mov   $0, %rax
         mov   $0, %rdi
         mov   $number, %rsi
         mov   $100, %rdx
         syscall

#return rax
     mov %rax, %r8

#print message
         mov   $1, %rax
         mov   $1, %rdi
         mov   $message, %rsi
         mov   $18, %rdx
         syscall


#print number
     mov   $1, %rax
     mov   $1, %rdi
     mov   $number, %rsi
     mov   %r8, %rdx
     syscall 

#exit program
    mov   $60, %rax
    mov   $0, %rdi
    syscall

        .data
    prompt:  .ascii "Please enter a number: "
    number: .zero 100
    message: .ascii "You entered: "

