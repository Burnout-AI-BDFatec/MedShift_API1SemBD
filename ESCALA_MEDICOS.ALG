Algoritmo "Escala_Medicos"

Var
   turno_manha_CG, turno_manha_Ped, turno_manha_Cir : real
   result_CG, result_Ped, result_Cir : real
   button : caractere

   turno_tarde_CG, turno_tarde_Ped, turno_tarde_Cir : real
   result_tarde_CG, result_tarde_Ped, result_tarde_Cir : real

   turno_noite_CG, turno_noite_Ped, turno_noite_Cir : real
   result_noite_CG, result_noite_Ped, result_noite_Cir : real
Inicio
   button <- "n"

   Enquanto (button <> "s") E (button <> "S") Faça

      turno_manha_CG <- -1
      turno_manha_Ped <- -1
      turno_manha_Cir <- -1

      //  Clínicos Gerais
      Enquanto (turno_manha_CG < 0) OU (turno_manha_CG > 140) OU (result_CG > 0) Faça
         Escreval()
         Escreval("Digite o número de Clínicos Gerais do turno da manhã: ")
         Leia(turno_manha_CG)
         result_CG <- turno_manha_CG - int(turno_manha_CG)
         Se (turno_manha_CG < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_manha_CG > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_CG > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      //  Pediatras
      Enquanto (turno_manha_Ped < 0) OU (turno_manha_Ped > 140) OU (result_Ped > 0) Faça
         Escreval()
         Escreval("Digite o número de Pediatras do turno da manhã: ")
         Leia(turno_manha_Ped)
         result_Ped <- turno_manha_Ped - int(turno_manha_Ped)
         Se (turno_manha_Ped < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_manha_Ped > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_Ped > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      // ---- Cirurgiões ----
      Enquanto (turno_manha_Cir < 0) OU (turno_manha_Cir > 140) OU (result_Cir > 0) Faça
         Escreval()
         Escreval("Digite o número de Cirurgiões do turno da manhã: ")
         Leia(turno_manha_Cir)
         result_Cir <- turno_manha_Cir - int(turno_manha_Cir)
         Se (turno_manha_Cir < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_manha_Cir > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_Cir > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      // ---- Confirmação ----
      Escreval()
      Escreval("Confirme os dados do turno da manhã:")
      Escreval("Clínicos Gerais: ", turno_manha_CG)
      Escreval("Pediatras: ", turno_manha_Ped)
      Escreval("Cirurgiões: ", turno_manha_Cir)
      Escreval()
      Escreval("Digite 's' para confirmar ou 'n' para corrigir:")
      Leia(button)
      Escreval()

      Se (button <> "s") E (button <> "S") E (button <> "n") E (button <> "N") Então
         Escreval("Opção inválida! Digite novamente os dados")
         button <- "n"
      Fimse

   Fimenquanto

   Escreval("Dados da manhã confirmados.")

   //TURNO DA TARDE

   escreval()
   button <- "n"

   Enquanto (button <> "s") E (button <> "S") Faça

      turno_tarde_CG <- -1
      turno_tarde_Ped <- -1
      turno_tarde_Cir <- -1

      Enquanto (turno_tarde_CG < 0) OU (turno_tarde_CG > 140) OU (result_CG > 0) Faça
         Escreval()
         Escreval("Digite o número de Clínicos Gerais do turno da tarde: ")
         Leia(turno_tarde_CG)
         result_CG <- turno_tarde_CG - int(turno_tarde_CG)
         Se (turno_tarde_CG < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_tarde_CG > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_CG > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      Enquanto (turno_tarde_Ped < 0) OU (turno_tarde_Ped > 140) OU (result_tarde_Ped > 0) Faça
         Escreval()
         Escreval("Digite o número de Pediatras do turno da tarde: ")
         Leia(turno_tarde_Ped)
         result_Ped <- turno_tarde_Ped - int(turno_tarde_Ped)
         Se (turno_tarde_Ped < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_tarde_Ped > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_tarde_Ped > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto


      Enquanto (turno_tarde_Cir < 0) OU (turno_tarde_Cir > 140) OU (result_tarde_Cir > 0) Faça
         Escreval()
         Escreval("Digite o número de Cirurgiões do turno da manhã: ")
         Leia(turno_tarde_Cir)
         result_tarde_Cir <- turno_tarde_Cir - int(turno_tarde_Cir)
         Se (turno_tarde_Cir < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_tarde_Cir > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_tarde_Cir > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      Escreval()
      Escreval("Confirme os dados do turno da manhã:")
      Escreval("Clínicos Gerais: ", turno_tarde_CG)
      Escreval("Pediatras: ", turno_tarde_Ped)
      Escreval("Cirurgiões: ", turno_tarde_Cir)
      Escreval()
      Escreval("Digite 's' para confirmar ou 'n' para corrigir:")
      Leia(button)
      Escreval()

      Se (button <> "s") E (button <> "S") E (button <> "n") E (button <> "N") Então
         Escreval("Opção inválida! Digite novamente os dados")
         button <- "n"
      Fimse

   Fimenquanto

   Escreval("Dados da tarde confirmados.")

   escreval()
   button <- "n"

   Enquanto (button <> "s") E (button <> "S") Faça

      turno_noite_CG <- -1
      turno_noite_Ped <- -1
      turno_noite_Cir <- -1

      Enquanto (turno_noite_CG < 0) OU (turno_noite_CG > 140) OU (result_noite_CG > 0) Faça
         Escreval()
         Escreval("Digite o número de Clínicos Gerais do turno da noite: ")
         Leia(turno_noite_CG)
         result_noite_CG <- turno_noite_CG - int(turno_noite_CG)
         Se (turno_noite_CG < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_noite_CG > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_noite_CG > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      Enquanto (turno_noite_Ped < 0) OU (turno_noite_Ped > 140) OU (result_noite_Ped > 0) Faça
         Escreval()
         Escreval("Digite o número de Pediatras do turno da noite: ")
         Leia(turno_noite_Ped)
         result_noite_Ped <- turno_noite_Ped - int(turno_noite_Ped)
         Se (turno_noite_Ped < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_noite_Ped > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_noite_Ped > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      Enquanto (turno_noite_Cir < 0) OU (turno_noite_Cir > 140) OU (result_noite_Cir > 0) Faça
         Escreval()
         Escreval("Digite o número de Cirurgiões do turno da noite: ")
         Leia(turno_noite_Cir)
         result_noite_Cir <- turno_noite_Cir - int(turno_noite_Cir)
         Se (turno_noite_Cir < 0) Então
            Escreval()
            Escreval("Número inválido! Quantidade não pode ser negativa")
         Senão
            Se (turno_noite_Cir > 140) Então
               Escreval()
               Escreval("Número inválido! Quantidade de médicos maior que a quantidade máxima permitida")
            Senão
               Se (result_noite_Cir > 0) Então
                  Escreval()
                  Escreval("Número inválido! Quantidade de médicos não pode ser decimal")
               Fimse
            Fimse
         Fimse
      Fimenquanto

      Escreval()
      Escreval("Confirme os dados do turno da manhã:")
      Escreval("Clínicos Gerais: ", turno_noite_CG)
      Escreval("Pediatras: ", turno_noite_Ped)
      Escreval("Cirurgiões: ", turno_noite_Cir)
      Escreval()
      Escreval("Digite 's' para confirmar ou 'n' para corrigir:")
      Leia(button)
      Escreval()

      Se (button <> "s") E (button <> "S") E (button <> "n") E (button <> "N") Então
         Escreval("Opção inválida! Digite novamente os dados")
         button <- "n"
      Fimse

   Fimenquanto

   Escreval("Dados da noite confirmados.")


Fimalgoritmo