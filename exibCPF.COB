       identification division.
       program-id. exibCPF.
       environment division.
       data division.
       working-storage section.
       
           01 CPF picture X(14).
           01 p1 picture 9(03).
           01 p2 picture 9(03).
           01 p3 picture 9(03).
           01 p4 picture 9(02).

           01 p1x picture X(03).
           01 p2x picture X(03).
           01 p3x picture X(03).
           01 p4x picture X(02).

       procedure division.
       
           move 897 to p1.
           move 374 to p2.
           move 102 to p3.
           move 38 to p4. 

           MOVE p1 TO p1x.
           MOVE p2 TO p2x.
           MOVE p3 TO p3x.
           MOVE p4 TO p4x.


           string p1x delimited by size
                  "." delimited by size
                  p2 delimited by size
                  "." delimited by size
                  p3 delimited by size
                  "-" delimited by size
                  p4 delimited by size
                  into CPF
           end-string.

           display "resultado: " CPF.

      * OU

       IDENTIFICATION DIVISION.  
       PROGRAM-ID. ATIVIDADE04.  
 
       DATA DIVISION.  
       WORKING-STORAGE SECTION.  
 
       01 CPF-FORMATADO.  
          05 PARTE1     PIC 9(3).  
          05 FILLER     PIC X     VALUE '.'.  
          05 PARTE2     PIC 9(3).  
          05 FILLER     PIC X     VALUE '.'.  
          05 PARTE3     PIC 9(3).  
          05 FILLER     PIC X     VALUE '-'.  
          05 PARTE4     PIC 9(2).  
 
       PROCEDURE DIVISION.  
           MOVE 123 TO PARTE1  
           MOVE 456 TO PARTE2  
           MOVE 789 TO PARTE3  
           MOVE 01  TO PARTE4  
 
           DISPLAY "CPF FORMATADO: " CPF-FORMATADO  
 
           STOP RUN.  
    
