Algoritmo "Escala_Medicos"

Var
   turno_manha_CG, turno_manha_Ped, turno_manha_Cir : real
   result_CG, result_Ped, result_Cir : real
   button : caractere

   turno_tarde_CG, turno_tarde_Ped, turno_tarde_Cir : real
   result_tarde_CG, result_tarde_Ped, result_tarde_Cir : real

   turno_noite_CG, turno_noite_Ped, turno_noite_Cir : real
   result_noite_CG, result_noite_Ped, result_noite_Cir : real

   min_CG, min_Ped, Min_Cir: real
   max_Med, min_Med: real
   valida_manha, valida_tarde, valida_noite: real
   log_manha, log_tarde, log_noite: inteiro
   soma_manha, soma_tarde, soma_noite, soma_geral: real

Inicio

   log_manha <- 0
   log_tarde <- 0
   log_noite <- 0
   max_Med <- 140

   min_CG <- 2
   min_Ped <- 1
   min_Cir <- 1

   button <- "n"
   soma_manha <- 0
   soma_tarde <- 0
   soma_noite <- 0
   soma_geral <- max_Med +1

   Enquanto (soma_geral > max_Med)faça
      escreval()

      Enquanto (button <> "s") E (button <> "S") Faça

         turno_manha_CG <- -1
         turno_manha_Ped <- -1
         turno_manha_Cir <- -1

         //  Clínicos Gerais
         Enquanto (turno_manha_CG < 0) OU (turno_manha_CG > max_Med) OU (result_CG > 0) Faça
            Escreval()
            Escreval("Digite o número de Clínicos Gerais do turno da manhã: ")
            Leia(turno_manha_CG)
            result_CG <- turno_manha_CG - int(turno_manha_CG)
            Se (turno_manha_CG < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_manha_CG > max_Med) Então
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
         Enquanto (turno_manha_Ped < 0) OU (turno_manha_Ped > max_Med) OU (result_Ped > 0) Faça
            Escreval()
            Escreval("Digite o número de Pediatras do turno da manhã: ")
            Leia(turno_manha_Ped)
            result_Ped <- turno_manha_Ped - int(turno_manha_Ped)
            Se (turno_manha_Ped < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_manha_Ped > max_Med) Então
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
         Enquanto (turno_manha_Cir < 0) OU (turno_manha_Cir > max_Med) OU (result_Cir > 0) Faça
            Escreval()
            Escreval("Digite o número de Cirurgiões do turno da manhã: ")
            Leia(turno_manha_Cir)
            result_Cir <- turno_manha_Cir - int(turno_manha_Cir)
            Se (turno_manha_Cir < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_manha_Cir > max_Med) Então
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
          senao
          Escreval("Dados da manhã confirmados.")

         fimse

      Fimenquanto



      //TURNO DA TARDE

      escreval()
      button <- "n"

      Enquanto (button <> "s") E (button <> "S") Faça

         turno_tarde_CG <- -1
         turno_tarde_Ped <- -1
         turno_tarde_Cir <- -1

         Enquanto (turno_tarde_CG < 0) OU (turno_tarde_CG > max_Med) OU (result_CG > 0) Faça
            Escreval()
            Escreval("Digite o número de Clínicos Gerais do turno da tarde: ")
            Leia(turno_tarde_CG)
            result_CG <- turno_tarde_CG - int(turno_tarde_CG)
            Se (turno_tarde_CG < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_tarde_CG > max_Med) Então
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

         Enquanto (turno_tarde_Ped < 0) OU (turno_tarde_Ped > max_Med) OU (result_tarde_Ped > 0) Faça
            Escreval()
            Escreval("Digite o número de Pediatras do turno da tarde: ")
            Leia(turno_tarde_Ped)
            result_Ped <- turno_tarde_Ped - int(turno_tarde_Ped)
            Se (turno_tarde_Ped < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_tarde_Ped > max_Med) Então
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


         Enquanto (turno_tarde_Cir < 0) OU (turno_tarde_Cir > max_Med) OU (result_tarde_Cir > 0) Faça
            Escreval()
            Escreval("Digite o número de Cirurgiões do turno da Tarde: ")
            Leia(turno_tarde_Cir)
            result_tarde_Cir <- turno_tarde_Cir - int(turno_tarde_Cir)
            Se (turno_tarde_Cir < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_tarde_Cir > max_Med) Então
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
         Escreval("Confirme os dados do turno da Tarde:")
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

         Enquanto (turno_noite_CG < 0) OU (turno_noite_CG > max_Med) OU (result_noite_CG > 0) Faça
            Escreval()
            Escreval("Digite o número de Clínicos Gerais do turno da noite: ")
            Leia(turno_noite_CG)
            result_noite_CG <- turno_noite_CG - int(turno_noite_CG)
            Se (turno_noite_CG < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_noite_CG > max_Med) Então
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

         Enquanto (turno_noite_Ped < 0) OU (turno_noite_Ped > max_Med) OU (result_noite_Ped > 0) Faça
            Escreval()
            Escreval("Digite o número de Pediatras do turno da noite: ")
            Leia(turno_noite_Ped)
            result_noite_Ped <- turno_noite_Ped - int(turno_noite_Ped)
            Se (turno_noite_Ped < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_noite_Ped > max_Med) Então
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

         Enquanto (turno_noite_Cir < 0) OU (turno_noite_Cir > max_Med) OU (result_noite_Cir > 0) Faça
            Escreval()
            Escreval("Digite o número de Cirurgiões do turno da noite: ")
            Leia(turno_noite_Cir)
            result_noite_Cir <- turno_noite_Cir - int(turno_noite_Cir)
            Se (turno_noite_Cir < 0) Então
               Escreval()
               Escreval("Número inválido! Quantidade não pode ser negativa")
            Senão
               Se (turno_noite_Cir > max_Med) Então
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
         Escreval("Confirme os dados do turno da Noite:")
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

         Escreval("Dados da noite confirmados.")

      Fimenquanto

      escreval()
      soma_manha <- (turno_manha_CG + turno_manha_Ped + turno_manha_Cir)
      soma_tarde <- (turno_tarde_CG + turno_tarde_Ped + turno_tarde_Cir)
      soma_noite <- (turno_noite_CG + turno_noite_Ped + turno_noite_Cir)
      soma_geral <- (soma_manha + soma_tarde + soma_noite)

      Se (soma_geral >max_Med)entao
         escreval("Turno inválido! Insira os dados novamente")
         turno_manha_CG <- -1
         turno_manha_Ped <- -1
         turno_manha_Cir <- -1
         button <- "n
      senao
         Escreval("Turno válido!")
      fimse


   Fimenquanto

   Se (turno_manha_CG >= min_CG) E (turno_manha_Ped >= min_Ped) E (turno_manha_Cir >= min_Cir) Então
   escreval("Turno da Manhã Válido.")
    log_manha <- 1
   Senão
   escreval("Turno da Manhã Inválido.")
    Fimse

   Se (turno_tarde_CG >= min_CG) E (turno_tarde_Ped >= min_Ped) E (turno_tarde_Cir >= min_Cir) Então
    escreval("Turno da Tarde Válido.")
   log_tarde <- 1
   Senão
   Escreval("Turno da Tarde Inválido")
   Fimse

   Se (turno_noite_CG >= min_CG) E (turno_noite_Ped >= min_Ped) E (turno_noite_Cir >= min_Cir) Então
   escreval("Turno da Noite Válido.")
    log_noite <- 1
   Senão
    escreval("Turno da Noite Inválido.")
   Fimse

   Se (soma_geral > max_Med) então
    escreval("O número total de médicos inseridos ultrapassa o total de médicos Disponíveis.")
   Senão
    escreval("Plantão Válido.")
   Fimse






Fimalgoritmo
