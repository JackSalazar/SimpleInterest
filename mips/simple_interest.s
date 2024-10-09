        .text
        .globl simple_interest
        .data

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
                                     #int SI;
                                     #
                                     #int t1;
                                     #int t2;
                                     #
                                     ## Insert your code here
                                     ##SI = R  * P * T / 100; 
        li $t0, 100
        mult $a1, $a0                             #t1 = R * P;
        mflo $t1
        mfhi $t2
        mv $v0, $t1
        #print_d $a1
        #print_d
        #mult $t2, $t1, $a2                             #t1 = t1 * T;
        #div $t3, $t2, $t0                             #SI = t1 / 100;
        #move $v0, $t3                             #
        
        print_d($v0)                          #mips.print_d(SI);
        print_ci('\n')                              #mips.print_ci('\n');
                                     # return 0;
                          #}
