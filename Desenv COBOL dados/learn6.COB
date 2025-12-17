       IDENTIFICATION        DIVISION.
       PROGRAM-ID. CLIENTES.
      * COMENTARIO   
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT     IS COMMA.    
       INPUT-OUTPUT          SECTION.
       FILE-CONTROL.
           SELECT EARQCLI ASSIGN TO ".\ARQUIVO.TXT" 
               FILE STATUS IS FS-EARQCLI. 
           SELECT SAIDA ASSIGN TO ".\SAIDA.TXT" 
               FILE STATUS IS FS-SAIDA. 

       DATA                  DIVISION. 
       FILE                  SECTION.
       FD  EARQCLI
           RECORDING  MODE IS F.
           
           copy "BOOK".

      *    LAYOUT = 55 POSICOES\

       FD SAIDA
           recording mode is F.
       
       01 REGISTRO-SAIDA       PICTURE X(20).
      *layout tem 20 posicoes( agencia, conta , tipo, saldo) 
          
       

       WORKING-STORAGE       SECTION.

      *------------ VARIAVEIS DE STATUS
       01  FS-EARQCLI            PICTURE 9(02).
       01  FS-SAIDA          PICTURE 9(02).

      *------------ VARIAVEIS ACUMULADORAS 
       01  WRK-CONTADOR          PICTURE 9(03) USAGE COMP.
       01  WRK-CONTADOR-VALIDO   PICTURE 9(03) USAGE COMP.
       01  WRK-CONTADOR-NVALIDO  PICTURE 9(03) USAGE COMP.   

       PROCEDURE             DIVISION.
       0100-PRINCIPAL        SECTION.
           PERFORM  0200-INICIAR. 
           PERFORM  0300-PROCESSAR UNTIL FS-EARQCLI EQUAL 10. 
           PERFORM  0400-FINALIZAR.
           STOP  RUN.


       0100-FIM. EXIT.
       
      *----------------------- INICIAR
       0200-INICIAR          SECTION.

             OPEN INPUT EARQCLI.
             IF FS-EARQCLI NOT EQUAL ZEROS
               DISPLAY "ARQUIVO DE ENTRADA NAO ABERTO"
               GOBACK
             END-IF. 
               
             OPEN OUTPUT SAIDA.
             IF FS-EARQCLI NOT EQUAL ZEROS
               DISPLAY "ARQUIVO DE SAIDA NAO ABERTO"
               GOBACK
             END-IF. 

             PERFORM 0210-LEITURA.  


       0200-FIM. EXIT.

       0210-LEITURA         SECTION.
            READ EARQCLI.    
       0210-FIM. EXIT.


      *----------------------- PROCESSAR
       0300-PROCESSAR        SECTION.
               
             ADD 1 TO WRK-CONTADOR.

            IF REG-SALDO GREATER THAN OR EQUAL  5000  AND 
              (REG-TIPO-CONTA EQUAL 1  OR  REG-TIPO-CONTA EQUAL 2 )

      * ESSE STRING PEGA AS VAR-ENTRADA DO ARQUIVO E COLOCA NA VAR-SAIDA
              string REG-AGENCIA   delimited by size
                     REG-CONTA     delimited by size
                     REG-TIPO-CONTA delimited by size
                     REG-SALDO     delimited by size
              into REGISTRO-SAIDA

              write REGISTRO-SAIDA

              IF FS-SAIDA NOT EQUAL zeros
                 DISPLAY "ARQUIVO NAO ESCRITO"
              END-IF

              ADD 1 TO WRK-CONTADOR-VALIDO
 
           ELSE
                 EVALUATE TRUE
                    WHEN REG-SALDO LESS 5000
                       DISPLAY "SALDO NAO COMPATIVEL" 
                    WHEN REG-TIPO-CONTA NOT EQUAL 1 OR
                         REG-TIPO-CONTA NOT EQUAL 2  
                        DISPLAY "TIPO DE CONTA NAO EXISTE" 
                 END-EVALUATE 
                 
                 ADD 1 TO WRK-CONTADOR-NVALIDO

           END-IF.

              PERFORM 0210-LEITURA.

       0300-FIM. EXIT.

      *----------------------- FINALIZAR
       0400-FINALIZAR        SECTION.
           CLOSE EARQCLI
                 SAIDA.

           DISPLAY "----------------------".
           DISPLAY "--- ESTATISTICA  -----".
           DISPLAY "CLIENTES LIDOS: " WRK-CONTADOR.
           DISPLAY "VALIDOS.......: " WRK-CONTADOR-VALIDO.
           DISPLAY "NAO VALIDOS...: " WRK-CONTADOR-NVALIDO.


       0400-FIM. EXIT.

  