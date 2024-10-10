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

        li $t0, 100          #turns 100 into a variable
        mult $a1, $a0                             #t1 = R * P;
        mflo $t1             #moves lo to a variable
        mult $t1, $a2                             #t2 = t1 * T;
        mflo $t3
        div $t3, $t0                             #SI = t2 / 100;
        mflo $t5
        li $v0, 1            #tells the system to print $a0 at syscall
        add $a0, $zero, $t5 #non-pseudo code for move $a0, $t1
        syscall              #executes $v0, which is to print $a0
        li $v0, 0
        jr $ra               #tells the process to return
        #print_d($v0)                          #mips.print_d(SI);
        #print_ci('\n')                              #mips.print_ci('\n');
                                     # return 0;
                          #} 
