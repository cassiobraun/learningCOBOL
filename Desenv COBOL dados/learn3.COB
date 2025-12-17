       
      * dados de identificacao do arquivo
       identification division.
       program-id. learn3.

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

       01  TIPO_CONTA  PICTURE 9 VALUE ZERO.
      
      * implementacao das funcoes
       procedure division.

           DISPLAY "INSIRA SEU NOME:".
               accept WRK-NAME.

           DISPLAY "INSIRA UM NUMERO:".
               accept SALDO.

           DISPLAY "TIPO DE CONTA(1-CONTA JURIDICA 2-CONTA FISICA)".
               accept TIPO_CONTA.

           IF SALDO LESS than or equal 5000 and
               (WRK-NAME equal "cassio" or WRK-NAME equal "julia")

               move SALDO to SALDO_ED
               DISPLAY WRK-NAME "  SALDO: " SALDO_ED

               evaluate TIPO_CONTA
 
               when 1
                   DISPLAY "CONTA JUDIRICA"
               when 2
                   display "CONTA FISICA"
               when other
                   display "nenhum tipo de conta"

               end-evaluate
           else
               display "saldo insuficiente"
           END-IF.
           
           STOP RUN.