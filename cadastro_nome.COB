      *Imagine que você está desenvolvendo um sistema interno para 
      *gerenciar funcionários de uma empresa. 
      *Cada colaborador precisa ser identificado de forma única, 
      *com um nome completo e um código numérico. Seu desafio é 
      *estruturar esses dados e exibi-los corretamente.
       
       identification division.
       program-id. cadastro_nome. 
       environment division.
       data division.
       
       working-storage section.
      
      *entao seria 0,12345678
           01 WRK-RAND    PIC 9V9(8). 

           01 dados.
               02 nome picture x(30).
               02 codigo picture 9(4).

       procedure division.
       
           display "por favor preencha seu nome:".
           accept nome.

           display "gerado seu codigo...".

           compute WRK-RAND = function random
           COMPUTE codigo = WRK-RAND * 10000
           DISPLAY "NUMERO GERADO: " codigo
           STOP RUN.
           


       