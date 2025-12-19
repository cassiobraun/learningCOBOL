       identification division.
       program-id. comp_esto. 
       environment division.
       data division.
       
       working-storage section.
      
           01 deposito1.
               02 produtoA PIC 9(02).
               02 produtoB PIC 9(02).
               02 produtoC PIC 9(02).
           
           01 deposito2.
               02 produtoA PIC 9(02).
               02 produtoB PIC 9(02).
               02 produtoC PIC 9(02).

           01 total.
               02 produtoA PIC 9(02).
               02 produtoB PIC 9(02).
               02 produtoC PIC 9(02).

       procedure division.

           move 10 to produtoA of deposito1
           move 5 to produtoB of deposito1
           move 2 to produtoC of deposito1
 
           move 15 to produtoA of deposito2
           move 20 to produtoB of deposito2
           move 8 to produtoC of deposito2

           COMPUTE produtoA of total = produtoA of deposito1 + 
           produtoA of deposito2

           COMPUTE produtoB of total = produtoB of deposito1 + 
           produtoB of deposito2

           COMPUTE produtoC of total = produtoC of deposito1 + 
           produtoC of deposito2

           display "produto A total:"  produtoA of total.
           display "produto B total:"  produtoB of total.
           display "produto C total:"  produtoC of total.

           STOP RUN.



       
   
           STOP RUN.