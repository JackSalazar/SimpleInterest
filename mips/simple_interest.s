        .text
        .globl simple_interest
        .include "include/stack.s"
        .include "include/syscalls.s"
        #.data

         # SI = R / 100 * P * T;
         # where
         #   P  = Principal, i.e., your investment
         #   R  = interest Rate, e.g., 3 for 3% / year
         #   T  = number of Terms in years.

        #Dictionary
        #SI = v0
        #t1 = t1
        #t2 = t2
        #P = a0
        #R = a1
        #T = a2

        #dont use mul, it's pseudocode. Use the harder version which is mult, that contains the result of hi and lo
        #I don't think it's necessary for this, but for the sake of documentation, init, name, body, next, done 


    simple_interest: nop                  #public static int simple_interest(int P, int R, int T) {
        #li $t0, 100
        #li $t0, 617250
        #move $a0, $t0
        #li $v0, 1            #tells the system to print $a0 at syscall
        #add $a0, $zero, $t0 #non-pseudo code for move $a0, $t1
        #syscall              #executes $v0, which is to print $a0
        #jr $ra  


                                     #int SI;
                                     #
                                     #int t1;
                                     #int t2;
                                     #
                                     ## Insert your code here
                                     ##SI = R  * P * T / 100; 
        li $t0, 100          #turns 100 into a variable
        mult $a1, $a0                             #t1 = R * P;
        mflo $t1             #moves lo to a variable
        #mfhi $t2     #test hi        #moves hi to a variable

        mult $t1, $a2                             #t2 = t1 * T;
        mflo $t3
        #mfhi $t4  #test hi
        #addu $t4, $t4, $t2 #test hi
        div $t3, $t0                             #SI = t2 / 100;
        #move $v0, $t3                             #
        mflo $t5
        #mfhi $t6  #test hi
        #addu $t6, $t6, $t4 #test hi
        li $v0, 1            #tells the system to print $a0 at syscall
        add $a0, $zero, $t5 #non-pseudo code for move $a0, $t1
        syscall              #executes $v0, which is to print $a0
        li $v0, 0
        jr $ra               #tells the process to return
        #print_d($v0)                          #mips.print_d(SI);
        #print_ci('\n')                              #mips.print_ci('\n');
                                     # return 0;
                          #}
