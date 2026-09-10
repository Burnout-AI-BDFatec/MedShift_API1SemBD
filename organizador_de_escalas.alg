Algoritmo "Escala_Medicos"

Var
   turno_manha_CG, turno_manha_Ped, turno_manha_Cir : real
   result_turno_manha_CG, result_turno_manha_Ped, result_turno_manha_Cir : real
   button : caractere

Inicio
   turno_manha_CG <- -1
   turno_manha_Ped <- -1
   turno_manha_Cir <- -1

   Enquanto (button <> "s") E (button <> "S") Faça
      Escreval()
      Enquanto (turno_manha_CG < 0) OU (turno_manha_CG>140) OU (result_turno_manha_CG>0) Faça
         Escreval("Digite o número de Clínicos Gerais do turno da manhã: ")
         Leia(turno_manha_CG)
         result_turno_manha_CG <- turno_manha_CG - int(turno_manha_CG)
         Se(turno_manha_CG<0)Então
            Escreval()
            escreval("Número inválido! Quantidade não pode ser negativa")
            Escreval()
         Senão
            Se (turno_manha_CG>140) Então
               Escreval()
               Escreval(" Número inválido! Quantidade de médicos maior que a quantidade maxima permitida")
               Escreval()
            Senão
               Se(result_turno_manha_CG>0)Então
                  Escreval()
                  Escreval(" Número inválido! Quantidade de médicos não pode ser decimal")
                  Escreval()
               Fimse
            Fimse
         Fimse
      Fimenquanto
      
      Escreval()
      Escreval("Digite o número de Pediatras do turno da manhã: ")
      Leia(turno_manha_Ped)
                 // repetir a logica do codigo acima
      
      Escreval()
      Escreval("Digite o número de Cirurgiões do turno da manhã: ")
      Leia(turno_manha_Cir)
                // repetir a logica do codigo acima

      Escreval()
      Escreval("Confirme os dados do turno da manhã:")
      Escreval("Clínicos Gerais: ", turno_manha_CG)
      Escreval("Pediatras: ", turno_manha_Ped)
      Escreval("Cirurgiões: ", turno_manha_Cir)
      Escreval()

      Escreval("Digite 's' para confirmar ou 'n' para corrigir:")
      Leia(button)
      Escreval()
      Escreval()
      Se (button = "n") OU (button = "N") Então
         turno_manha_CG <- -1
         turno_manha_Ped <- -1
         turno_manha_Cir <- -1

         Escreval()
         Escreval("Digite novamente os dados")
         Escreval()
      Senão
         Se (button <> "s") E (button <> "S") Então
            turno_manha_CG <- -1
            turno_manha_Ped <- -1
            turno_manha_Cir <- -1
            Escreval("Opção inválida! Digite novamente os dados")
            Escreval()
         Fimse
      Fimse

   Fimenquanto
   escreval("Dados da manhã confirmados.")

Fimalgoritmo