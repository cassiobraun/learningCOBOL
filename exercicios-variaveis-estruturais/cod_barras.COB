       identification division.
       program-id. cod_barras.
       environment division.
       data division.
       working-storage section.
           01 CODIGO_BARRAS.
               02 CODIGO PIC 9(06).
               02 FILLER PIC X VALUE "|".
               02 LOTE PIC 9(04).
               02 FILLER PIC X VALUE "|".

               02 VALIDADE     PIC 9(8). 

           procedure division.
           
           MOVE 123456 TO CODIGO.
           MOVE 7890 TO LOTE  .
           MOVE 20280419 TO VALIDADE .

           DISPLAY CODIGO_BARRAS.


           STOP RUN.