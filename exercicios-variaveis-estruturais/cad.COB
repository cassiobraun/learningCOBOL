       identification division.
       program-id. cad.
       environment division.
       data division.
       working-storage section.
           01 CLIENTE.
               02 ENDERECO.
                   03 RUA PIC X(30).
                   03 NUMERO PIC 9(03).
                   03 CEP PIC Z(08).
               02 NOME PIC X(20).
               02 IDADE PIC 9(02). 

           procedure division.
           
           display "qual seu nome"
               accept NOME OF CLIENTE

           display "qual sua idade"
               accept IDADE OF CLIENTE

           MOVE "rua mauricio cardoso" TO RUA OF ENDERECO OF CLIENTE
           MOVE 032 TO NUMERO OF ENDERECO OF CLIENTE
           MOVE 83874932 TO CEP OF ENDERECO OF CLIENTE


           DISPLAY "destino - NOME: " NOME OF CLIENTE
           DISPLAY "destino - IDADE: " IDADE OF CLIENTE
           DISPLAY "destino - RUA: " RUA OF ENDERECO OF CLIENTE
           DISPLAY "destino - NUM: " NUMERO OF ENDERECO OF CLIENTE
           DISPLAY "destino - CEP: " CEP OF ENDERECO OF CLIENTE


           STOP RUN.