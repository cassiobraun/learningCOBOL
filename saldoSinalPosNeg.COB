       IDENTIFICATION DIVISION.  
       PROGRAM-ID. ATIVIDADE05.  
       
       DATA DIVISION.  
       WORKING-STORAGE SECTION.  
       
       01 SALDO-CONTA.  
          05 SALDO PIC S9(4)V99.  
       
       PROCEDURE DIVISION.  
           MOVE -1450.75 TO SALDO  
       
           DISPLAY "SALDO ATUAL: " SALDO  
       
           STOP RUN.  
