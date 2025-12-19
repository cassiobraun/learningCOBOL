       identification division.
       program-id. folha_pagamento.
       environment division.
       data division.
       working-storage section.

       01 FUNCIONARIO.
           02 NOME picture X(20).
           02 DEPARTAMENTO picture X(03).
           02 SALARIO-BRUTO picture Z(06).99.
           02 IMPOSTO picture Z(06).99.

       procedure division.
       
           display "qual seu nome: ".
               accept NOME.
           display "qual seu departamento: ".
               accept DEPARTAMENTO.
           
           if function ORD(NOME(1:1)) >= "A" AND function ORD(NOME(1:1)) <= "H"  than
               MOVE 2200 TO SALARIO-BRUTO
               move 1000 to IMPOSTO
           else
               move 4400 to SALARIO-BRUTO
               move 1000 to IMPOSTO
           end-if.

           display FUNCIONARIO.

           stop run.
