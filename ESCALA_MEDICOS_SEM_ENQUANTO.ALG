Algoritmo  "SEM_ENQUANTO"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor    : Antonio Carlos Nicolodi

// API FATEC - BANCO DE DADOS - 1º SEMESTRE
// EQUIPE BURNOUT AI
// P.O. - GUSTAVO NEVES
// S.M. - GUILHERME NANNI
// DEV - DAVI WILLIAM
// DEV - FERNANDO TRONE
// DEV - GABRIEL KODATO
// DEV - JONAS VIEIRA
// DEV - LUCAS ROBERTO
// DEV - WILLIAM TOLEDO


Var

   turno_manha_CG, turno_manha_Ped, turno_manha_Cir : inteiro
   turno_tarde_CG, turno_tarde_Ped, turno_tarde_Cir : inteiro
   turno_noite_CG, turno_noite_Ped, turno_noite_Cir : inteiro

   button : caractere

   min_CG, min_Ped, min_Cir : inteiro
   max_Med : inteiro

   log_manha, log_tarde, log_noite : inteiro

   soma_manha, soma_tarde, soma_noite, soma_geral : inteiro

   falta_CG, falta_Ped, falta_Cir : inteiro


Inicio

   log_manha <- 0
   log_tarde <- 0
   log_noite <- 0

   max_Med <- 140

   min_CG <- 2
   min_Ped <- 1
   min_Cir <- 1

   soma_manha <- 0
   soma_tarde <- 0
   soma_noite <- 0
   soma_geral <- 0

   button <- "n"


   // ========================================
   // TELA INICIAL
   // ========================================

   Escreval("========================================")
   Escreval("       MEDSHIFT - SISTEMA MÉDICO        ")
   Escreval("         HOSPITAL SANTA AURORA          ")
   Escreval("========================================")
   Escreval()
   Escreval(" Olá, seja muito bem-vindo(a)!")
   Escreval(" Central de Configuração de Escalas.")
   Escreval("----------------------------------------")
   Escreval()
   Escreval()



   // ========================================
   // TURNO DA MANHÃ
   // ========================================

   Escreval("========================================")
   Escreval("       CADASTRO DO TURNO DA MANHÃ")
   Escreval("========================================")


   // ----------------------------------------
   // CLÍNICOS GERAIS
   // ----------------------------------------

   Escreva("Digite o número de CLÍNICOS GERAIS: ")
   Leia(turno_manha_CG)

   Se (turno_manha_CG < 0) OU (turno_manha_CG > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_manha_CG < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de CLÍNICOS GERAIS: ")
      Leia(turno_manha_CG)


      Se (turno_manha_CG < 0) OU (turno_manha_CG > max_Med) Então

         LimpaTela()

         Escreval()
         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

         Se (turno_manha_CG < 0) Então

            Escreval("A quantidade continua negativa.")

         Senão

            Escreval("A quantidade continua acima do limite permitido.")

         Fimse

      Fimse

   Fimse


   // ----------------------------------------
   // PEDIATRAS
   // ----------------------------------------

   Escreva("Digite o número de PEDIATRAS: ")
   Leia(turno_manha_Ped)

   Se (turno_manha_Ped < 0) OU (turno_manha_Ped > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_manha_Ped < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de PEDIATRAS: ")
      Leia(turno_manha_Ped)


      Se (turno_manha_Ped < 0) OU (turno_manha_Ped > max_Med) Então

         LimpaTela()

         Escreval()
         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

         Se (turno_manha_Ped < 0) Então

            Escreval("A quantidade continua negativa.")

         Senão

            Escreval("A quantidade continua acima do limite permitido.")

         Fimse

      Fimse

   Fimse


   // ----------------------------------------
   // CIRURGIÕES
   // ----------------------------------------

   Escreva("Digite o número de CIRURGIÕES: ")
   Leia(turno_manha_Cir)

   Se (turno_manha_Cir < 0) OU (turno_manha_Cir > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_manha_Cir < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de CIRURGIÕES: ")
      Leia(turno_manha_Cir)


      Se (turno_manha_Cir < 0) OU (turno_manha_Cir > max_Med) Então

         LimpaTela()

         Escreval()
         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

         Se (turno_manha_Cir < 0) Então

            Escreval("A quantidade continua negativa.")

         Senão

            Escreval("A quantidade continua acima do limite permitido.")

         Fimse

      Fimse

   Fimse


   // ----------------------------------------
   // CONFIRMAÇÃO DA MANHÃ
   // ----------------------------------------

   LimpaTela()

   Escreval("========================================")
   Escreval("       RESUMO DO TURNO DA MANHÃ")
   Escreval("========================================")
   Escreval()
   Escreval(" Clínicos Gerais: ", turno_manha_CG)
   Escreval(" Pediatras:       ", turno_manha_Ped)
   Escreval(" Cirurgiões:      ", turno_manha_Cir)
   Escreval()
   Escreval("----------------------------------------")
   Escreval(" Total de médicos: ",turno_manha_CG + turno_manha_Ped + turno_manha_Cir)
   Escreval("========================================")
   Escreval()
   Escreval(" Os dados estão corretos?")
   Escreval()
   Escreval(" [S] Sim, confirmar")
   Escreval(" [N] Não, corrigir")
   Escreval()
   Escreva(" Opção: ")
   Leia(button)


   Se (button = "N") OU (button = "n") Então

      LimpaTela()

      Escreval("========================================")
      Escreval("       CORREÇÃO DO TURNO DA MANHÃ")
      Escreval("========================================")
      Escreval()


      Escreva("Digite novamente o número de CLÍNICOS GERAIS: ")
      Leia(turno_manha_CG)

      Se (turno_manha_CG < 0) OU (turno_manha_CG > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse


      Escreva("Digite novamente o número de PEDIATRAS: ")
      Leia(turno_manha_Ped)

      Se (turno_manha_Ped < 0) OU (turno_manha_Ped > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse


      Escreva("Digite novamente o número de CIRURGIÕES: ")
      Leia(turno_manha_Cir)

      Se (turno_manha_Cir < 0) OU (turno_manha_Cir > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse

   Fimse


   Escreval()
   Escreval("Dados do TURNO DA MANHÃ processados.")
   LimpaTela()


   // ========================================
   // TURNO DA TARDE
   // ========================================

   Escreval("========================================")
   Escreval("       CADASTRO DO TURNO DA TARDE")
   Escreval("========================================")


   // ----------------------------------------
   // CLÍNICOS GERAIS
   // ----------------------------------------

   Escreva("Digite o número de CLÍNICOS GERAIS: ")
   Leia(turno_tarde_CG)

   Se (turno_tarde_CG < 0) OU (turno_tarde_CG > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_tarde_CG < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de CLÍNICOS GERAIS: ")
      Leia(turno_tarde_CG)


      Se (turno_tarde_CG < 0) OU (turno_tarde_CG > max_Med) Então

         LimpaTela()

         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

      Fimse

   Fimse


   // ----------------------------------------
   // PEDIATRAS
   // ----------------------------------------

   Escreva("Digite o número de PEDIATRAS: ")
   Leia(turno_tarde_Ped)

   Se (turno_tarde_Ped < 0) OU (turno_tarde_Ped > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_tarde_Ped < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de PEDIATRAS: ")
      Leia(turno_tarde_Ped)


      Se (turno_tarde_Ped < 0) OU (turno_tarde_Ped > max_Med) Então

         LimpaTela()

         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

      Fimse

   Fimse


   // ----------------------------------------
   // CIRURGIÕES
   // ----------------------------------------

   Escreva("Digite o número de CIRURGIÕES: ")
   Leia(turno_tarde_Cir)

   Se (turno_tarde_Cir < 0) OU (turno_tarde_Cir > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_tarde_Cir < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de CIRURGIÕES: ")
      Leia(turno_tarde_Cir)


      Se (turno_tarde_Cir < 0) OU (turno_tarde_Cir > max_Med) Então

         LimpaTela()

         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

      Fimse

   Fimse


   // ----------------------------------------
   // CONFIRMAÇÃO DA TARDE
   // ----------------------------------------

   LimpaTela()

   Escreval("========================================")
   Escreval("       RESUMO DO TURNO DA TARDE")
   Escreval("========================================")
   Escreval()
   Escreval(" Clínicos Gerais: ", turno_tarde_CG)
   Escreval(" Pediatras:       ", turno_tarde_Ped)
   Escreval(" Cirurgiões:      ", turno_tarde_Cir)
   Escreval()
   Escreval("----------------------------------------")
   Escreval(" Total de médicos: ",turno_tarde_CG + turno_tarde_Ped + turno_tarde_Cir)
   Escreval("========================================")
   Escreval()
   Escreval(" Os dados estão corretos?")
   Escreval()
   Escreval(" [S] Sim, confirmar")
   Escreval(" [N] Não, corrigir")
   Escreval()
   Escreva(" Opção: ")
   Leia(button)


   Se (button = "N") OU (button = "n") Então

      LimpaTela()

      Escreval("========================================")
      Escreval("       CORREÇÃO DO TURNO DA TARDE")
      Escreval("========================================")
      Escreval()


      Escreva("Digite novamente o número de CLÍNICOS GERAIS: ")
      Leia(turno_tarde_CG)

      Se (turno_tarde_CG < 0) OU (turno_tarde_CG > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse


      Escreva("Digite novamente o número de PEDIATRAS: ")
      Leia(turno_tarde_Ped)

      Se (turno_tarde_Ped < 0) OU (turno_tarde_Ped > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse


      Escreva("Digite novamente o número de CIRURGIÕES: ")
      Leia(turno_tarde_Cir)

      Se (turno_tarde_Cir < 0) OU (turno_tarde_Cir > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse

   Fimse


   Escreval()
   Escreval("Dados do TURNO DA TARDE processados.")
   LimpaTela()


   // ========================================
   // TURNO DA NOITE
   // ========================================

   Escreval("========================================")
   Escreval("       CADASTRO DO TURNO DA NOITE")
   Escreval("========================================")


   // ----------------------------------------
   // CLÍNICOS GERAIS
   // ----------------------------------------

   Escreva("Digite o número de CLÍNICOS GERAIS: ")
   Leia(turno_noite_CG)

   Se (turno_noite_CG < 0) OU (turno_noite_CG > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_noite_CG < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de CLÍNICOS GERAIS: ")
      Leia(turno_noite_CG)


      Se (turno_noite_CG < 0) OU (turno_noite_CG > max_Med) Então

         LimpaTela()

         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

      Fimse

   Fimse


   // ----------------------------------------
   // PEDIATRAS
   // ----------------------------------------

   Escreva("Digite o número de PEDIATRAS: ")
   Leia(turno_noite_Ped)

   Se (turno_noite_Ped < 0) OU (turno_noite_Ped > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_noite_Ped < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de PEDIATRAS: ")
      Leia(turno_noite_Ped)


      Se (turno_noite_Ped < 0) OU (turno_noite_Ped > max_Med) Então

         LimpaTela()

         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

      Fimse

   Fimse


   // ----------------------------------------
   // CIRURGIÕES
   // ----------------------------------------

   Escreva("Digite o número de CIRURGIÕES: ")
   Leia(turno_noite_Cir)

   Se (turno_noite_Cir < 0) OU (turno_noite_Cir > max_Med) Então

      LimpaTela()

      Escreval()
      Escreval("NÚMERO INVÁLIDO!")

      Se (turno_noite_Cir < 0) Então

         Escreval("Quantidade não pode ser negativa.")

      Senão

         Escreval("Quantidade maior que a quantidade máxima permitida.")

      Fimse

      Escreval()
      Escreva("Digite novamente o número de CIRURGIÕES: ")
      Leia(turno_noite_Cir)


      Se (turno_noite_Cir < 0) OU (turno_noite_Cir > max_Med) Então

         LimpaTela()

         Escreval("NÚMERO INVÁLIDO NOVAMENTE!")

      Fimse

   Fimse


   // ----------------------------------------
   // CONFIRMAÇÃO DA NOITE
   // ----------------------------------------

   LimpaTela()

   Escreval("========================================")
   Escreval("       RESUMO DO TURNO DA NOITE")
   Escreval("========================================")
   Escreval()
   Escreval(" Clínicos Gerais: ", turno_noite_CG)
   Escreval(" Pediatras:       ", turno_noite_Ped)
   Escreval(" Cirurgiões:      ", turno_noite_Cir)
   Escreval()
   Escreval("----------------------------------------")
   Escreval(" Total de médicos: ",turno_noite_CG + turno_noite_Ped + turno_noite_Cir)
   Escreval("========================================")
   Escreval()
   Escreval(" Os dados estão corretos?")
   Escreval()
   Escreval(" [S] Sim, confirmar")
   Escreval(" [N] Não, corrigir")
   Escreval()
   Escreva(" Opção: ")
   Leia(button)


   Se (button = "N") OU (button = "n") Então

      LimpaTela()

      Escreval("========================================")
      Escreval("       CORREÇÃO DO TURNO DA NOITE")
      Escreval("========================================")
      Escreval()


      Escreva("Digite novamente o número de CLÍNICOS GERAIS: ")
      Leia(turno_noite_CG)

      Se (turno_noite_CG < 0) OU (turno_noite_CG > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse


      Escreva("Digite novamente o número de PEDIATRAS: ")
      Leia(turno_noite_Ped)

      Se (turno_noite_Ped < 0) OU (turno_noite_Ped > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse


      Escreva("Digite novamente o número de CIRURGIÕES: ")
      Leia(turno_noite_Cir)

      Se (turno_noite_Cir < 0) OU (turno_noite_Cir > max_Med) Então

         Escreval("NÚMERO INVÁLIDO!")

      Fimse

   Fimse


   Escreval()
   Escreval("Dados do TURNO DA NOITE processados.")
   LimpaTela()


   // ========================================
   // CÁLCULO DOS TOTAIS
   // ========================================

   soma_manha <- turno_manha_CG + turno_manha_Ped + turno_manha_Cir

   soma_tarde <- turno_tarde_CG + turno_tarde_Ped + turno_tarde_Cir

   soma_noite <- turno_noite_CG + turno_noite_Ped + turno_noite_Cir

   soma_geral <- soma_manha + soma_tarde + soma_noite


   // ========================================
   // RELATÓRIO GERAL
   // ========================================

   Escreval("========================================")
   Escreval("         RELATÓRIO GERAL DO PLANTÃO     ")
   Escreval("========================================")
   Escreval()

   Escreval("TURNO DA MANHÃ:")
   Escreval("  - Clínicos Gerais: ", turno_manha_CG)
   Escreval("  - Pediatras:       ", turno_manha_Ped)
   Escreval("  - Cirurgiões:      ", turno_manha_Cir)
   Escreval("  - Total no turno:  ", soma_manha)
   Escreval()

   Escreval("TURNO DA TARDE:")
   Escreval("  - Clínicos Gerais: ", turno_tarde_CG)
   Escreval("  - Pediatras:       ", turno_tarde_Ped)
   Escreval("  - Cirurgiões:      ", turno_tarde_Cir)
   Escreval("  - Total no turno:  ", soma_tarde)
   Escreval()

   Escreval("TURNO DA NOITE:")
   Escreval("  - Clínicos Gerais: ", turno_noite_CG)
   Escreval("  - Pediatras:       ", turno_noite_Ped)
   Escreval("  - Cirurgiões:      ", turno_noite_Cir)
   Escreval("  - Total no turno:  ", soma_noite)
   Escreval()

   Escreval("TOTAL GERAL DE MÉDICOS: ", soma_geral)
   Escreval()

   Escreval("========================================")


   // ========================================
   // VERIFICAÇÃO DOS TURNOS
   // ========================================

   Se (soma_geral <= max_Med) Então

      Se (turno_manha_CG >= min_CG) E (turno_manha_Ped >= min_Ped) E (turno_manha_Cir >= min_Cir) Então

         log_manha <- 1

      Fimse


      Se (turno_tarde_CG >= min_CG) E (turno_tarde_Ped >= min_Ped) E (turno_tarde_Cir >= min_Cir) Então

         log_tarde <- 1

      Fimse


      Se (turno_noite_CG >= min_CG) E (turno_noite_Ped >= min_Ped) E (turno_noite_Cir >= min_Cir) Então
         log_noite <- 1

      Fimse

   Fimse


   // ========================================
   // LIMITE MÁXIMO
   // ========================================

   Se (soma_geral > max_Med) Então

      Escreval("===========================================")
      Escreval("ERRO! Número máximo de médicos ultrapassado")
      Escreval("===========================================")

   Fimse


   // ========================================
   // PROBLEMAS NOS TURNOS
   // ========================================

   Se (soma_geral <= max_Med) Então

      Se (log_manha = 0) OU (log_tarde = 0) OU (log_noite = 0) Então

         Escreval()
         Escreval("    O PLANTÃO NÃO PODE SER PUBLICADO!   ")
         Escreval("========================================")
         Escreval()


         // ----------------------------------------
         // PROBLEMAS MANHÃ
         // ----------------------------------------

         Se (log_manha = 0) Então

            Escreval("========================================")
            Escreval("   -> Problema(s) no TURNO DA MANHÃ:")
            Escreval()

            Se (turno_manha_CG < min_CG) Então

               falta_CG <- min_CG - turno_manha_CG

               Escreval(" - Falta(m): ", falta_CG," Clínico(s) Geral(is)")

            Fimse


            Se (turno_manha_Ped < min_Ped) Então

               falta_Ped <- min_Ped - turno_manha_Ped

               Escreval(" - Falta(m): ", falta_Ped, " Pediatra(s)")

            Fimse


            Se (turno_manha_Cir < min_Cir) Então

               falta_Cir <- min_Cir - turno_manha_Cir

               Escreval(" - Falta(m): ", falta_Cir, " Cirurgião(ões)")

            Fimse

            Escreval("========================================")

         Fimse


         Escreval()


         // ----------------------------------------
         // PROBLEMAS TARDE
         // ----------------------------------------

         Se (log_tarde = 0) Então

            Escreval("========================================")
            Escreval("   -> Problema(s) no TURNO DA TARDE:")
            Escreval()

            Se (turno_tarde_CG < min_CG) Então

               falta_CG <- min_CG - turno_tarde_CG

               Escreval(" - Falta(m): ", falta_CG, " Clínico(s) Geral(is)")

            Fimse


            Se (turno_tarde_Ped < min_Ped) Então

               falta_Ped <- min_Ped - turno_tarde_Ped

               Escreval(" - Falta(m): ", falta_Ped," Pediatra(s)")

            Fimse


            Se (turno_tarde_Cir < min_Cir) Então

               falta_Cir <- min_Cir - turno_tarde_Cir

               Escreval(" - Falta(m): ", falta_Cir, " Cirurgião(ões)")

            Fimse

            Escreval("========================================")

         Fimse


         Escreval()


         // ----------------------------------------
         // PROBLEMAS NOITE
         // ----------------------------------------

         Se (log_noite = 0) Então

            Escreval("========================================")
            Escreval("   -> Problema(s) no TURNO DA NOITE:")
            Escreval()

            Se (turno_noite_CG < min_CG) Então

               falta_CG <- min_CG - turno_noite_CG

               Escreval(" - Falta(m): ", falta_CG," Clínico(s) Geral(is)")

            Fimse


            Se (turno_noite_Ped < min_Ped) Então

               falta_Ped <- min_Ped - turno_noite_Ped

               Escreval(" - Falta(m): ", falta_Ped, " Pediatra(s)")

            Fimse


            Se (turno_noite_Cir < min_Cir) Então

               falta_Cir <- min_Cir - turno_noite_Cir

               Escreval(" - Falta(m): ", falta_Cir," Cirurgião(ões)")

            Fimse

            Escreval("========================================")

         Fimse

      Fimse

   Fimse


   // ========================================
   // PUBLICAÇÃO DO PLANTÃO
   // ========================================

   Se (log_manha = 1) E (log_tarde = 1) E (log_noite = 1) Então

      Escreval()
      Escreval("     O PLANTÃO PODE SER PUBLICADO!      ")
      Escreval("========================================")

   Fimse




Fimalgoritmo