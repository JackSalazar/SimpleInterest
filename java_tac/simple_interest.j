
         // SI = R / 100 * P * T;
         // where
         //   P  = Principal, i.e., your investment
         //   R  = interest Rate, e.g., 3 for 3% / year
         //   T  = number of Terms in years.

         public static int simple_interest(int P, int R, int T) {
           int SI;

           int t1;
           int t2;

           // Insert your code here
           //SI = R  * P * T / 100; 
           t1 = R * P;
           t1 = t1 * T;
           SI = t1 / 100;

           mips.print_d(SI);
           mips.print_ci('\n');
           return 0;
         }   
