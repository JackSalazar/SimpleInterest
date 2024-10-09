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
    simple_interest: nop                  #public static int simple_interest(int P, int R, int T) {
                                     #int SI;
                                     #
                                     #int t1;
                                     #int t2;
                                     #
                                     ## Insert your code here
                                     ##SI = R  * P * T / 100; 
        li $t0, 100
        mul $t1, $a1, $a0                             #t1 = R * P;
        #print_d $a1
        #print_d
        mul $t1, $t1, $a2                             #t1 = t1 * T;
        div $t1, $t1, $t0                             #SI = t1 / 100;
        move $v0, $t1                             #
        
        print_d $t1                          #mips.print_d(SI);
        print_ci '\n'                              #mips.print_ci('\n');
                                     # return 0;
                          #}
