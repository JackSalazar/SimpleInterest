
         // SI = R / 100 * P * T;
         // where
         //   P  = Principal, i.e., your investment
         //   R  = interest Rate, e.g., 3 for 3% / year
         //   T  = number of Terms in years.

         public static int simple_interest(int P, int R, int T) {
   
           int SI;

           // Insert your code here
           SI = R / 100 * P * T;



           mips.print_d(SI);
           mips.print_ci('\n');
           return SI;
         }