       
      * dados de identificacao do arquivo
       identification division.
       program-id. learn2.

      * dados e arquivos externos usados
       environment division.
       configuration section.
       special-names.
           decimal-point   is comma.

      * definicao das variveis
       data division.
       working-storage section.
       01  WRK-NAME    PICTURE X(20)    VALUE SPACE.
       01  SALDO       PICTURE S9(10)  comp VALUE ZERO.
       01  SALDO_ED    PICTURE Z.ZZZ.ZZZ.ZZ9,99.
      
      * implementacao das funcoes
       procedure division.
           MOVE "CASSIO" TO WRK-NAME.

           DISPLAY "INSIRA UM NUMERO:".
               accept SALDO.

      *    equacao

           compute SALDO = (SALDO + 100) / 4.
               move SALDO to SALDO_ED.
           display "resultado_equacao" SALDO_ED.

           ADD SALDO 200 TO SALDO.
               move SALDO TO SALDO_ED.
           display "resultado_soma:" SALDO_ED.

           subtract 200 FROM SALDO.
               move SALDO TO SALDO_ED.
           display "resultado_soma:" SALDO_ED.

           DIVIDE SALDO BY 4 GIVING SALDO.
               move SALDO TO SALDO_ED.
           display "resultado_div:" SALDO_ED.
           
           MULTIPLY SALDO BY 3 GIVING SALDO.
               move SALDO TO SALDO_ED.
           display "resultado_mult:" SALDO_ED.

           STOP RUN.