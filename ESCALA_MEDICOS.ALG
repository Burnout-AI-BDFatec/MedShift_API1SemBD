Algoritmo "Escala_Medicos"

//API FATEC - BANCO DE DADOS - 1º SEMESTRE
//EQUIPE BURNOUT AI
//P.O. - GUSTAVO NEVES
//S.M. - GUILHERME NANNI
//DEV - DAVI WILLIAM
//DEV - FERNANDO TRONE
//DEV - GABRIEL KODATO
//DEV - JONAS VIEIRA
//DEV - LUCAS ROBERTO
//DEV - WILLIAM TOLEDO

Var
   turno_manha_CG, turno_manha_Ped, turno_manha_Cir : real
   result_CG, result_Ped, result_Cir : real
   button, analisar_outra_vez : caractere

   turno_tarde_CG, turno_tarde_Ped, turno_tarde_Cir : real
   result_tarde_CG, result_tarde_Ped, result_tarde_Cir : real

   turno_noite_CG, turno_noite_Ped, turno_noite_Cir : real
   result_noite_CG, result_noite_Ped, result_noite_Cir : real

   min_CG, min_Ped, Min_Cir: real
   max_Med, min_Med: real
   valida_manha, valida_tarde, valida_noite: real
   log_manha, log_tarde, log_noite: inteiro
   soma_manha, soma_tarde, soma_noite, soma_geral, soma_parcial_tarde, soma_parcial_noite, resta_tarde, resta_noite: real
   falta_CG, falta_Ped, falta_Cir: inteiro

Inicio

   Enquanto (analisar_outra_vez <> "n") E (analisar_outra_vez <> "N")Faça

      log_manha <- 0
      log_tarde <- 0
      log_noite <- 0
      max_Med <- 140

      min_CG <- 2
      min_Ped <- 1
      min_Cir <- 1

      button <- "n"
      analisar_outra_vez <- ""
      soma_manha <- max_Med + 1
      soma_tarde <- max_Med + 1
      soma_noite <- max_Med + 1
      soma_parcial_tarde <- max_Med + 1
      soma_parcial_noite <- max_Med + 1
      soma_geral <- max_Med + 1

      Enquanto (button <> "s") E (button <> "S") Faça
         Escreval("========================================")
         Escreval("       MEDSHIFT - SISTEMA MÉDICO        ")
         Escreval("         HOSPITAL SANTA AURORA          ")
         Escreval("========================================")
         Escreval()
         Escreval(" Olá, seja muito bem-vindo(a)!")
         Escreval(" Central de Configuração de Escalas.")
         Escreval("----------------------------------------")
         Escreval(" Pressione [N] para Cancelar")
         Escreval(" Ou pressione [S] para Continuar...")
         Escreval("========================================")
         Escreva(" Opção: ")
         Leia(button)

         LimpaTela()

         Se (button = "N") OU (button = "n") Então
            LimpaTela()
            Escreval("Sistema encerrado pelo usuário. Até logo!")
Fimalgoritmo
Fimse

Se (button <> "s") E (button <> "S") E (button <> "n") E (button <> "N") Então
   Escreval("OPÇÃO INVÁLIDA! Digite novamente a opção")
   button <- "n"
Fimse

Fimenquanto

LimpaTela()

Enquanto (soma_geral > max_Med)faça

   //TURNO DA MANHÃ

   Enquanto (soma_manha>max_Med)Faça

      button <- "n"

      Enquanto (button <> "s") E (button <> "S") Faça

         turno_manha_CG <- -1
         turno_manha_Ped <- -1
         turno_manha_Cir <- -1

         Escreval("========================================")
         Escreval("       CADASTRO DO TURNO DA MANHÃ")
         Escreval("========================================")

         //  Clínicos Gerais
         Enquanto (turno_manha_CG < 0) OU (turno_manha_CG > max_Med) OU (result_CG > 0) Faça
            Escreva("Digite o número de CLÍNICOS GERAIS: ")
            Leia(turno_manha_CG)
            result_CG <- turno_manha_CG - int(turno_manha_CG)
            Se (turno_manha_CG < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_manha_CG > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_CG > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto

         //  Pediatras
         Enquanto (turno_manha_Ped < 0) OU (turno_manha_Ped > max_Med) OU (result_Ped > 0) Faça
            Escreva("Digite o número de PEDIATRAS: ")
            Leia(turno_manha_Ped)
            result_Ped <- turno_manha_Ped - int(turno_manha_Ped)
            Se (turno_manha_Ped < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_manha_Ped > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_Ped > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto


         // ---- Cirurgiões ----
         Enquanto (turno_manha_Cir < 0) OU (turno_manha_Cir > max_Med) OU (result_Cir > 0) Faça
            Escreva("Digite o número de CIRURGIÕES: ")
            Leia(turno_manha_Cir)
            result_Cir <- turno_manha_Cir - int(turno_manha_Cir)
            Se (turno_manha_Cir < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_manha_Cir > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_Cir > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto

         // ---- Confirmação ----
         Escreval()
         Escreval("***CONFIRME OS DADOS DO TURNO DA MANHÃ:***")
         Escreval("Digite 's' para confirmar")
         Escreval("Digite 'n' para corrigir")
         Escreval()
         Escreva("OPÇÃO: ")
         Leia(button)
         limpatela
         Escreval()

         Se (button <> "s") E (button <> "S") E (button <> "n") E (button <> "N") Então
            Escreval("OPÇÃO INVÁLIDA! Digite novamente os dados")
            button <- "n"
         Fimse
      Fimenquanto

      soma_manha <- (turno_manha_CG + turno_manha_Ped + turno_manha_Cir)

      Se(soma_manha>max_Med)Então
         Escreval("==========================================================================")
         Escreval("ERRO! Número de médicos do TURNO DA MANHÃ excede a capacidade de médicos: ", max_Med)
         Escreval("ENTRE COM OS DADOS NOVAMENTE!")
         Escreval("==========================================================================")
      Fimse

   Fimenquanto

   Escreval("Dados do TURNO DA MANHÃ **CONFIRMADOS**.")

   LimpaTela()


   //TURNO DA TARDE

   Enquanto (soma_tarde>max_Med) OU (soma_parcial_tarde>max_Med) Faça

      button <- "n"

      Enquanto (button <> "s") E (button <> "S") Faça

         turno_tarde_CG <- -1
         turno_tarde_Ped <- -1
         turno_tarde_Cir <- -1

         Escreval("========================================")
         Escreval("       CADASTRO DO TURNO DA TARDE")
         Escreval("========================================")

         Enquanto (turno_tarde_CG < 0) OU (turno_tarde_CG > max_Med) OU (result_CG > 0) Faça
            Escreva("Digite o número de CLÍNICOS GERAIS: ")
            Leia(turno_tarde_CG)
            result_CG <- turno_tarde_CG - int(turno_tarde_CG)
            Se (turno_tarde_CG < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_tarde_CG > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_CG > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto


         Enquanto (turno_tarde_Ped < 0) OU (turno_tarde_Ped > max_Med) OU (result_tarde_Ped > 0) Faça
            Escreva("Digite o número de PEDIATRAS: ")
            Leia(turno_tarde_Ped)
            result_tarde_Ped <- turno_tarde_Ped - int(turno_tarde_Ped)
            Se (turno_tarde_Ped < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_tarde_Ped > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_tarde_Ped > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto

         Enquanto (turno_tarde_Cir < 0) OU (turno_tarde_Cir > max_Med) OU (result_tarde_Cir > 0) Faça
            Escreva("Digite o número de CIRURGIÕES: ")
            Leia(turno_tarde_Cir)
            result_tarde_Cir <- turno_tarde_Cir - int(turno_tarde_Cir)
            Se (turno_tarde_Cir < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_tarde_Cir > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_tarde_Cir > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto

         // ---- Confirmação tarde ----
         Escreval()
         Escreval("***CONFIRME OS DADOS DO TURNO DA TARDE:***")
         Escreval("Digite 's' para confirmar")
         Escreval("Digite 'n' para corrigir")
         Escreval()
         Escreva("OPÇÃO: ")
         Leia(button)
         limpatela
         Escreval()

         Se (button <> "s") E (button <> "S") E (button <> "n") E (button <> "N") Então
            Escreval("OPÇÃO INVÁLIDA! Digite novamente os dados")
            button <- "n"
         Fimse
      Fimenquanto

      soma_tarde <- (turno_tarde_CG + turno_tarde_Ped + turno_tarde_Cir)
      soma_parcial_tarde <- soma_manha + soma_tarde
      resta_tarde <- max_Med - soma_manha

      Se(soma_tarde>max_Med)Então
         Escreval("==========================================================================")
         Escreval("ERRO! Número de médicos do TURNO DA TARDE excede a capacidade de médicos: ", max_Med)
         Escreval("ENTRE COM OS DADOS NOVAMENTE!")
         Escreval("VOCE PODE ESCALAR ATÉ: ", resta_tarde, " MÉDICOS NO TURNO DA TARDE")
         Escreval("==========================================================================")
      Senão
         Se(soma_parcial_tarde>max_Med) E (resta_tarde <> 0)Então
            Escreval("=======================================================================================================================")
            Escreval("ERRO! Número de médicos do TURNO DA TARDE somado com o TURNO DA MANHÃ excede a capacidade de médicos: ", max_Med)
            Escreval("ENTRE COM OS DADOS NOVAMENTE!")
            Escreval("VOCE PODE ESCALAR ATÉ: ", resta_tarde, " MÉDICOS NO TURNO DA TARDE")
            Escreval("=======================================================================================================================")
         Fimse

         Se (resta_tarde = 0)Então
            Escreval("=================================================================================")
            Escreval("ERRO FATAL! NÃO SOBRARAM MÉDICOS PARA ESCALAR!")
            Escreval("VOCÊ ESCALOU TODOS OS: ", max_Med, " MÉDICOS DISPONÍVEIS NO TURNO DA MANHÃ")
            Escreval("ENTRE COM A QUANTIDADE 0/0/0 DE ESPECIALISTAS PARA PROSSEGUIR")
            Escreval("=================================================================================")
         Fimse

      Fimse


   Fimenquanto

   Escreval("Dados do TURNO DA TARDE **CONFIRMADOS**.")

   LimpaTela()

   //TURNO DA NOITE

   Enquanto (soma_noite>max_Med) OU (soma_parcial_noite>max_Med) Faça

      button <- "n"

      Enquanto (button <> "s") E (button <> "S") Faça

         turno_noite_CG <- -1
         turno_noite_Ped <- -1
         turno_noite_Cir <- -1

         Escreval("========================================")
         Escreval("       CADASTRO DO TURNO DA NOITE")
         Escreval("========================================")

         Enquanto (turno_noite_CG < 0) OU (turno_noite_CG > max_Med) OU (result_noite_CG > 0) Faça
            Escreva("Digite o número de CLÍNICOS GERAIS: ")
            Leia(turno_noite_CG)
            result_noite_CG <- turno_noite_CG - int(turno_noite_CG)
            Se (turno_noite_CG < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_noite_CG > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_noite_CG > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto

         Enquanto (turno_noite_Ped < 0) OU (turno_noite_Ped > max_Med) OU (result_noite_Ped > 0) Faça
            Escreva("Digite o número de PEDIATRAS: ")
            Leia(turno_noite_Ped)
            result_noite_Ped <- turno_noite_Ped - int(turno_noite_Ped)
            Se (turno_noite_Ped < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_noite_Ped > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_noite_Ped > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto


         Enquanto (turno_noite_Cir < 0) OU (turno_noite_Cir > max_Med) OU (result_noite_Cir > 0) Faça
            Escreva("Digite o número de CIRURGIÕES: ")
            Leia(turno_noite_Cir)
            result_noite_Cir <- turno_noite_Cir - int(turno_noite_Cir)
            Se (turno_noite_Cir < 0) Então
               LimpaTela()
               Escreval()
               Escreval("NÚMERO INVÁLIDO! Quantidade não pode ser negativa")
            Senão
               Se (turno_noite_Cir > max_Med) Então
                  LimpaTela()
                  Escreval()
                  Escreval("NÚMERO INVÁLIDO! Quantidade de médicos maior que a quantidade máxima permitida")
               Senão
                  Se (result_noite_Cir > 0) Então
                     LimpaTela()
                     Escreval()
                     Escreval("NÚMERO INVÁLIDO! Quantidade de médicos não pode ser decimal")
                  Fimse
               Fimse
            Fimse
         Fimenquanto

         //CONFIRMAÇÃO TURNO NOITE
         Escreval()
         Escreval("***CONFIRME OS DADOS DO TURNO DA NOITE:***")
         Escreval("Digite 's' para confirmar")
         Escreval("Digite 'n' para corrigir")
         Escreval()
         Escreva("OPÇÃO: ")
         Leia(button)
         limpatela
         Escreval()

         Se (button <> "s") E (button <> "S") E (button <> "n") E (button <> "N") Então
            Escreval("OPÇÃO INVÁLIDA! Digite novamente os dados")
            button <- "n"
         Fimse
      Fimenquanto

      soma_noite <- (turno_noite_CG + turno_noite_Ped + turno_noite_Cir)
      soma_parcial_noite <- soma_manha + soma_tarde + soma_noite
      resta_noite <- max_Med - soma_manha - soma_tarde

      Se(soma_noite>max_Med)Então
         Escreval("==========================================================================")
         Escreval("ERRO! Número de médicos do TURNO DA NOITE excede a capacidade de médicos: ", max_Med)
         Escreval("ENTRE COM OS DADOS NOVAMENTE!")
         Escreval("VOCE PODE ESCALAR ATÉ: ", resta_noite, " MÉDICOS NO TURNO DA NOITE")
         Escreval("==========================================================================")
      Senão
         Se(soma_parcial_noite>max_Med) E (resta_noite <> 0)Então
            Escreval("=============================================================================================================================")
            Escreval("ERRO! Número de médicos do TURNO DA NOITE somado com o TURNO DA MANHÃ e TURNO DA TARDE excede a capacidade de médicos: ", max_Med)
            Escreval("ENTRE COM OS DADOS NOVAMENTE!")
            Escreval("VOCE PODE ESCALAR ATÉ: ", resta_noite, " MÉDICOS NO TURNO DA NOITE")
            Escreval("=============================================================================================================================")
         Fimse

         Se (resta_noite = 0)Então
            Escreval("=================================================================================")
            Escreval("ERRO FATAL! NÃO SOBRARAM MÉDICOS PARA ESCALAR!")
            Escreval("VOCÊ ESCALOU TODOS OS: ", max_Med, " MÉDICOS DISPONÍVEIS NO TURNO DA MANHÃ E NO TURNO DA TARDE")
            Escreval("ENTRE COM A QUANTIDADE 0/0/0 DE ESPECIALISTAS PARA PROSSEGUIR")
            Escreval("=================================================================================")
         Fimse

      Fimse

   Fimenquanto

   Escreval("Dados do TURNO DA NOITE **CONFIRMADOS**.")

   LimpaTela()

   escreval()
   soma_manha <- (turno_manha_CG + turno_manha_Ped + turno_manha_Cir)
   soma_tarde <- (turno_tarde_CG + turno_tarde_Ped + turno_tarde_Cir)
   soma_noite <- (turno_noite_CG + turno_noite_Ped + turno_noite_Cir)
   soma_geral <- (soma_manha + soma_tarde + soma_noite)

   Se (soma_geral >max_Med)entao
      escreval("PLANTÃO INVÁLIDO! Insira os dados novamente. Número máximo de médicos ultrapassado")
      turno_manha_CG <- -1
      turno_manha_Ped <- -1
      turno_manha_Cir <- -1
      button <- "n"
   Fimse

Fimenquanto

LimpaTela()

//INDICE 4

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


//FIM INDICE 4

Se (turno_manha_CG >= min_CG) E (turno_manha_Ped >= min_Ped) E (turno_manha_Cir >= min_Cir) Então
   log_manha <- 1
Fimse

Se (turno_tarde_CG >= min_CG) E (turno_tarde_Ped >= min_Ped) E (turno_tarde_Cir >= min_Cir) Então
   log_tarde <- 1
Fimse

Se (turno_noite_CG >= min_CG) E (turno_noite_Ped >= min_Ped) E (turno_noite_Cir >= min_Cir) Então
   log_noite <- 1
Fimse

Se (log_manha = 0) OU (log_tarde = 0) OU (log_noite = 0)Então
   Escreval("    O PLANTÃO NÃO PODE SER PUBLICADO!   ")
   Escreval("========================================")
   Escreval()

   Se (log_manha = 0) Então
      Escreval("========================================")
      Escreval("   -> Problema(s) no TURNO DA MANHÃ:    ")
      Escreval()
      Se (turno_manha_CG < min_CG) Então
         falta_CG <- int(min_CG - turno_manha_CG)
         Escreval(" - Falta(m): ", falta_CG, " Clínico(s) Geral(is)")
      Fimse
      Se (turno_manha_Ped < min_Ped) Então
         falta_Ped <- int(min_Ped - turno_manha_Ped)
         Escreval (" - Falta(m): ", falta_Ped, " Pediatra(s)")
      Fimse
      Se (turno_manha_Cir < min_Cir) Então
         falta_Cir <- int(min_Cir - turno_manha_Cir)
         Escreval (" - Falta(m): ", falta_Cir, " Cirurgião(ões)")
      Fimse
      Escreval("========================================")
   Fimse

   Escreval()


   Se (log_tarde = 0) Então
      Escreval("========================================")
      Escreval("   -> Problema(s) no TURNO DA TARDE:    ")
      Escreval()
      Se (turno_tarde_CG < min_CG) Então
         falta_CG <- int(min_CG - turno_tarde_CG)
         Escreval(" - Falta(m): ", falta_CG, " Clínico(s) Geral(is)")
      Fimse
      Se (turno_tarde_Ped < min_Ped) Então
         falta_Ped <- int(min_Ped - turno_tarde_Ped)
         Escreval (" - Falta(m): ", falta_Ped, " Pediatra(s)")
      Fimse
      Se (turno_tarde_Cir < min_Cir) Então
         falta_Cir <- int(min_Cir - turno_tarde_Cir)
         Escreval (" - Falta(m): ", falta_Cir, " Cirurgião(ões)")
      Fimse
      Escreval("========================================")
   Fimse

   Escreval()

   Se (log_noite = 0) Então
      Escreval("========================================")
      Escreval("   -> Problema(s) no TURNO DA NOITE:    ")
      Escreval()
      Se (turno_noite_CG < min_CG) Então
         falta_CG <- int(min_CG - turno_noite_CG)
         Escreval(" - Falta(m): ", falta_CG, " Clínico(s) Geral(is)")
      Fimse
      Se (turno_noite_Ped < min_Ped) Então
         falta_Ped <- int(min_Ped - turno_noite_Ped)
         Escreval (" - Falta(m): ", falta_Ped, " Pediatra(s)")
      Fimse
      Se (turno_noite_Cir < min_Cir) Então
         falta_Cir <- int(min_Cir - turno_noite_Cir)
         Escreval (" - Falta(m): ", falta_Cir, " Cirurgião(ões)")
      Fimse
      Escreval("========================================")
   Fimse

Senão
   Escreval("     O PLANTÃO PODE SER PUBLICADO!      ")
   Escreval("========================================")
Fimse

Enquanto (analisar_outra_vez <> "s") E (analisar_outra_vez <> "S") E (analisar_outra_vez <> "n") E (analisar_outra_vez <> "N") Faça
   Escreval("==================================")
   Escreval("DESEJA ANALISAR OUTRO PLANTÃO?")
   Escreval("DIGITE [s] para SIM e [n] para NÃO")
   Escreva("OPÇÃO: ")
   Leia(analisar_outra_vez)
   LimpaTela()
   Escreval("==================================")

   Se (analisar_outra_vez <> "s") E (analisar_outra_vez <> "S") E (analisar_outra_vez <> "n") E (analisar_outra_vez <> "N") Então
      Escreval("OPÇÃO INVÁLIDA! Digite novamente a opção")
   Fimse
Fimenquanto


Fimenquanto

Fimalgoritmo
