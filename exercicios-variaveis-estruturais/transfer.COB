       identification division.
       program-id. transfer.
       environment division.
       data division.
       working-storage section.
           01 CLIENTE-ORIGEM.
               02 NOME PIC X(20).
               02 IDADE PIC 9(02).

           01 CLIENTE-DESTINO.
               02 NOME PIC X(20).
               02 IDADE PIC 9(03).

           procedure division.
           
           display "qual seu nome"
               accept NOME OF CLIENTE-ORIGEM

           display "qual sua idade"
               accept IDADE OF CLIENTE-ORIGEM

           MOVE CLIENTE-ORIGEM TO CLIENTE-DESTINO

           DISPLAY "destino - NOME: " NOME OF CLIENTE-DESTINO
           DISPLAY "destino - IDADE: " IDADE OF CLIENTE-DESTINO

           STOP RUN.