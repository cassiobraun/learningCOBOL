       identification division.
       program-id. soma_val.
       environment division.
       data division.
       working-storage section.
           01 VALOR1 picture  S9(04)V99.
           01 VALOR2 picture  S9(04)V99 usage comp.
           01 VALOR2_D picture  Z(04).99.
      
       procedure division.
           
           DISPLAY "qual valor diario da empresa 1:".
               accept VALOR1.

           DISPLAY "qual valor diario da empresa 2:".
               accept VALOR2.

           ADD VALOR1 TO VALOR2.

           MOVE VALOR2 TO VALOR2_D.

           DISPLAY "total:" VALOR2_D.

           STOP RUN.