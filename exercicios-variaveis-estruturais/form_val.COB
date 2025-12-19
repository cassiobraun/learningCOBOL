       identification division.
       program-id. form_val.
       environment division.
       data division.
       working-storage section.
           01 NUMERO_D PIC Z(04)9.99.

       procedure division.
       
           MOVE 3632.92 to NUMERO_D.

           display NUMERO_D.

           stop run.