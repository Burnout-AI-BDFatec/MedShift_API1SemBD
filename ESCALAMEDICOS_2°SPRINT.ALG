Algoritmo "EscalaMedicos_2°sprint"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi


Const

   max_med = 140

Var
   //Variáveis referente ao cadastro de escala:
   turno_manha: vetor[1..max_med] de inteiro
   turno_tarde: vetor[1..max_med] de inteiro
   turno_noite: vetor[1..max_med] de inteiro
   reg_manha: vetor[1..max_med] de inteiro
   reg_tarde: vetor[1..max_med] de inteiro
   reg_noite: vetor[1..max_med] de inteiro

   opcao_menu, opcao_esc, registro_med, cadastrou, descadastro : inteiro
   pare, button, buttonT: caractere
   repetido: logico


   //variaveis referentes ao cadastro de usuarios:
   med_Cod: vetor[1..max_med] de inteiro
   med_Nome: vetor [1..max_med] de caractere
   med_Espec: vetor [1..max_med] de caractere
   disp_manha: vetor [1..max_med] de caractere
   disp_tarde: vetor [1..max_med] de caractere
   disp_noite: vetor [1..max_med] de caractere
   qtd_turnos_escalados: vetor[1..max_med] de inteiro
   i, j: inteiro
   id: inteiro
   opcao: inteiro
   continuar: caractere

   //variaveis para consulta
   indice_relatorio: inteiro
   indice_encontrado: inteiro
   consulta_codigo: inteiro
   encontrado: logico
   total_cadastrados: inteiro

   //variaveis para validar a escala

   contador_escala : inteiro
   valida_cg_manha, valida_p_manha, valida_c_manha : inteiro
   valida_cg_tarde, valida_p_tarde, valida_c_tarde : inteiro
   valida_cg_noite, valida_p_noite, valida_c_noite : inteiro
   falta_cg_manha, falta_p_manha, falta_c_manha : inteiro
   falta_cg_tarde, falta_p_tarde, falta_c_tarde : inteiro
   falta_cg_noite, falta_p_noite, falta_c_noite : inteiro


Inicio

   opcao_menu <- 0
   i <- 1
   id <- 0
   opcao <- 0

   Enquanto (opcao_menu <> 5) Faça

      Escreval("=========================================")
      Escreval("       MEDSHIFT - MENU PRINCIPAL")
      Escreval("=========================================")
      Escreval()
      Escreval("        1 - CADASTRAR MÉDICOS")
      Escreval("        2 - CONSULTAR CADASTROS")
      Escreval("        3 - MONTAR ESCALA")
      Escreval("        4 - VALIDAR PLANTÃO")
      Escreval("        5 - ENCERRAR PROGRAMA")
      Escreval()
      Escreval("_________________________________________")
      Escreval()
      Escreva("Escolha uma opção: ")
      Leia(opcao_menu)
      LimpaTela()

      //CADASTRO DE MÉDICO

      Se (opcao_menu = 1) Então

         Se (i <= max_med) Então

            med_Cod[i] <- i
            Escreval()
            Escreval("====================================")
            Escreval()
            Escreva("Digite o nome do médico: ")
            Leia(med_Nome[i])
            Escreval()
            Escreval("====================================")
            Escreval()
            Escreval("Especialidade do médico: ")
            Escreval()
            Escreval("[1] - Clínico geral")
            Escreval("[2] - Pediatra ")
            Escreval("[3] - Cirurgião")
            Escreval()
            Escreval("____________________________________")
            Escreval()
            Escreva("Digite a especialidade do médico: ")
            Leia(opcao)
            LimpaTela()

            Enquanto (opcao < 1) ou (opcao > 3) Faça

               Escreval("===========================================")
               Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 até 3")
               Escreval("===========================================")
               Escreval()
               Escreval("- Dr.(a): ", med_Nome[i])
               Escreval("- Registro: ", med_Cod[i])
               Escreval()
               Escreval("===========================================")
               Escreval()
               Escreval("Especialidade do médico: ")
               Escreval()
               Escreval("[1] - Clínico geral")
               Escreval("[2] - Pediatra ")
               Escreval("[3] - Cirurgião")
               Escreval()
               Escreval("___________________________________________")
               Escreval()
               Escreva("Digite a especialidade do médico: ")
               Leia(opcao)
               LimpaTela()

            Fimenquanto

            Se (opcao = 1) Então

               med_Espec[i] <- "Clínico geral"

            Senão

               Se (opcao = 2) Então

                  med_Espec[i] <- "Pediatra"

               Senão

                  Se (opcao = 3) Então

                     med_Espec[i] <- "Cirurgião"

                  Fimse

               Fimse

            Fimse

            Escreval()
            Escreval("==============================")
            Escreval()
            Escreval("- Dr.(a): ", med_Nome[i])
            Escreval("- Especialidade: ",med_Espec[i])
            Escreval("- Registro: ", med_Cod[i])
            Escreval()
            Escreval("Tem disponibilidade de MANHÃ: ")
            Escreval("[1] Sim")
            Escreval("[2] Não")
            Escreval()
            Escreval("______________________________")
            Escreval()
            Escreva("Opção: ")
            Leia(opcao)
            LimpaTela()

            Enquanto (opcao < 1) ou (opcao > 2) Faça

               Escreval("=========================================")
               Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 e 2")
               Escreval("=========================================")
               Escreval()
               Escreval("- Dr.(a): ", med_Nome[i])
               Escreval("- Especialidade: ",med_Espec[i])
               Escreval("- Registro: ", med_Cod[i])
               Escreval()
               Escreval("Tem disponibilidade de MANHÃ: ")
               Escreval("[1] Sim")
               Escreval("[2] Não")
               Escreval()
               Escreval("_________________________________________")
               Escreval()
               Escreva("Opção: ")
               Leia(opcao)
               LimpaTela()


            Fimenquanto

            Se (opcao = 1) Então

               disp_manha[i] <- "Sim"

            Senão

               Se (opcao = 2) Então

                  disp_manha[i] <- "Não"

               Fimse

            Fimse

            Escreval()
            Escreval("==============================")
            Escreval()
            Escreval("- Dr.(a): ", med_Nome[i])
            Escreval("- Especialidade: ",med_Espec[i])
            Escreval("- Registro: ", med_Cod[i])
            Escreval()
            Escreval("Tem disponibilidade de TARDE: ")
            Escreval("[1] Sim")
            Escreval("[2] Não")
            Escreval()
            Escreval("______________________________")
            Escreval()
            Escreva("Opção: ")
            Leia(opcao)
            LimpaTela()

            Enquanto (opcao < 1) ou (opcao > 2) Faça

               Escreval("=========================================")
               Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 e 2")
               Escreval("=========================================")
               Escreval()
               Escreval("- Dr.(a): ", med_Nome[i])
               Escreval("- Especialidade: ",med_Espec[i])
               Escreval("- Registro: ", med_Cod[i])
               Escreval()
               Escreval("Tem disponibilidade de TARDE: ")
               Escreval("[1] Sim")
               Escreval("[2] Não")
               Escreval()
               Escreval("_________________________________________")
               Escreval()
               Escreva("Opção: ")
               Leia(opcao)
               LimpaTela()

            Fimenquanto

            Se (opcao = 1) Então

               disp_tarde[i] <- "Sim"

            Senao

               Se (opcao = 2) Então

                  disp_tarde[i] <- "Não"

               Fimse

            Fimse


            Escreval()
            Escreval("==============================")
            Escreval()
            Escreval("- Dr.(a): ", med_Nome[i])
            Escreval("- Especialidade: ",med_Espec[i])
            Escreval("- Registro: ", med_Cod[i])
            Escreval()
            Escreval("Tem disponibilidade de NOITE: ")
            Escreval("[1] Sim")
            Escreval("[2] Não")
            Escreval()
            Escreval("______________________________")
            Escreval()
            Escreva("Opção: ")
            Leia(opcao)
            LimpaTela()

            Enquanto (opcao < 1) ou (opcao > 2) Faça

               Escreval("=========================================")
               Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 e 2")
               Escreval("=========================================")
               Escreval()
               Escreval("- Dr.(a): ", med_Nome[i])
               Escreval("- Especialidade: ",med_Espec[i])
               Escreval("- Registro: ", med_Cod[i])
               Escreval()
               Escreval("Tem disponibilidade de NOITE: ")
               Escreval("[1] Sim")
               Escreval("[2] Não")
               Escreval()
               Escreval("_________________________________________")
               Escreval()
               Escreva("Opção: ")
               Leia(opcao)
               LimpaTela()

            Fimenquanto

            Se (opcao = 1) Então

               disp_noite[i] <- "Sim"

            Senão

               Se (opcao = 2) Então

                  disp_noite[i] <- "Não"

               Fimse

            Fimse

            //Relatorio final do cadastro de uma unidade de medico



            Escreval()
            Escreval("===============================================")
            Escreval()
            Escreval("CADASTRO DO(A) MÉDICO(A) REALIZADO COM SUCESSO!")
            Escreval()
            Escreval("- Dr.(a): ", med_Nome[i])
            Escreval("- Especialidade: ", med_Espec[i])
            Escreval("- Registro: ", med_Cod[i])
            Escreval()
            Escreval("- Disponibilidade de manhã: ", disp_manha[i])
            Escreval("- Disponibilidade de tarde: ", disp_tarde[i])
            Escreval("- Disponibilidade de noite: ", disp_noite[i])
            Escreval()
            Escreval("===============================================")

            Escreval()
            Escreval("APERTE [ENTER] OU QUALQUER TECLA PARA CONTINUAR")
            Escreval()
            Leia(continuar)
            LimpaTela()

            i <- (i + 1)

         Senão

            // SE USUARIO FOR ULTRAPASSAR O CADASTRO DE 140 MEDICOS



            Escreval()
            Escreval("=============================================")
            Escreval()
            Escreval("  ERRO! NÚMERO MÁXIMO DE MÉDICOS ATINGIDOS: ", max_med)
            Escreval()
            Escreval("=============================================")
         Fimse

      Senão

         Se (opcao_menu = 2) Então

            // Conta quantos médicos estão cadastrados no vetor
            total_cadastrados <- 0
            Para indice_relatorio de 1 ate max_med Faça
               Se med_Cod[indice_relatorio] <> 0 Então
                  total_cadastrados <- total_cadastrados + 1
               FimSe
            FimPara

            // Exibe a tela com o total logo acima
            LimpaTela()
            Escreval("==================================================")
            Escreval("                 CONSULTA DE MÉDICO               ")
            Escreval("==================================================")
            Escreval(" Total de médicos cadastrados no sistema: ", total_cadastrados)
            Escreval("--------------------------------------------------")
            Escreval()
            Escreval(" Digite abaixo o REGISTRO que deseja consultar:")
            Escreval()
            Escreva(" >>> REGISTRO: ")
            Leia(consulta_codigo)
            LimpaTela()

            // CONSULTA DE CADASTRO MÉDICO

            encontrado <- falso

            Para indice_relatorio de 1 ate max_med Faça

               Se (med_Cod[indice_relatorio] <> 0) e (med_Cod[indice_relatorio] = consulta_codigo)  Então

                  encontrado <- verdadeiro
                  indice_encontrado <- indice_relatorio

               FimSe

            FimPara

            Se (encontrado = falso) Então

               LimpaTela()

               Escreval("============================================================================================")
               Escreval()
               Escreval("                              MÉDICO NÃO CADASTRADO")
               Escreval()
               Escreval("============================================================================================")
               Escreval()
               Escreval("O REGISTRO: ", consulta_codigo, " não está cadastrado.")
               Escreval()
               Escreval("============================================================================================")

            Senão

               Escreval("============================================================================================")
               Escreval()
               Escreval("                                    RELATÓRIO DE MÉDICOS")
               Escreval()
               EscrevaL("============================================================================================")
               Escreval()
               Escreval("REGISTRO  NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
               Escreval()
               Escreval("--------------------------------------------------------------------------------------------")


               Se (med_Cod[indice_encontrado] < 10) Então

                  Escreval("  ",med_Cod[indice_encontrado], "      ", med_Nome[indice_encontrado])

                  Se (med_Espec[indice_encontrado] = "Clínico geral") Então

                     Escreval("                           ", med_Espec[indice_encontrado], "       ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                  Fimse

                  Se (med_Espec[indice_encontrado] = "Pediatra") Então

                     Escreval("                           ", med_Espec[indice_encontrado], "            ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                  Fimse

                  Se (med_Espec[indice_encontrado] = "Cirurgião") Então

                     Escreval("                           ", med_Espec[indice_encontrado], "           ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                  Fimse

               Senão

                  Se (med_Cod[indice_encontrado] < 100) Então

                     Escreval(" ",med_Cod[indice_encontrado], "      ", med_Nome[indice_encontrado])

                     Se (med_Espec[indice_encontrado] = "Clínico geral") Então

                        Escreval("                           ", med_Espec[indice_encontrado], "       ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                     Fimse

                     Se (med_Espec[indice_encontrado] = "Pediatra") Então

                        Escreval("                           ", med_Espec[indice_encontrado], "            ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                     Fimse

                     Se (med_Espec[indice_encontrado] = "Cirurgião") Então

                        Escreval("                           ", med_Espec[indice_encontrado], "           ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                     Fimse

                  Senão

                     Escreval(med_Cod[indice_encontrado], "      ", med_Nome[indice_encontrado])

                     Se   (med_Espec[indice_encontrado] = "Clínico geral") Então

                        Escreval("                           ", med_Espec[indice_encontrado], "       ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                     Fimse

                     Se   (med_Espec[indice_encontrado] = "Pediatra") Então

                        Escreval("                           ", med_Espec[indice_encontrado], "            ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                     Fimse

                     Se   (med_Espec[indice_encontrado] = "Cirurgião") Então

                        Escreval("                           ", med_Espec[indice_encontrado], "           ", disp_manha[indice_encontrado], "      ", disp_tarde[indice_encontrado], "      ", disp_noite[indice_encontrado], "           ",qtd_turnos_escalados[indice_encontrado])

                     Fimse

                  Fimse

               Fimse

               EscrevaL("============================================================================================")

            Fimse

            Escreval()
            Escreval("APERTE [ENTER] OU QUALQUER TECLA PARA CONTINUAR")
            Escreval()
            Leia(continuar)
            LimpaTela()

         Senão




            //MONTAGEM ESCALA




            Se (opcao_menu = 3) Entao

               opcao_esc <- 0

               Limpatela()

               Enquanto (opcao_esc <> 4) Faça

                  Escreval("========================================")
                  Escreval()
                  Escreval("           MONTAR ESCALA")
                  Escreval()
                  Escreval("========================================")
                  Escreval()
                  Escreval("        1 - TURNO DA MANHÃ")
                  Escreval("        2 - TURNO DA TARDE")
                  Escreval("        3 - TURNO DA NOITE")
                  Escreval("        4 - SAIR")
                  Escreval()
                  Escreval("========================================")
                  Escreval()
                  Escreva("Escolha uma opção: ")
                  Leia(opcao_esc)
                  LimpaTela()




                  //CADASTRO DO TURNO DA MANHÃ




                  Se (opcao_esc = 1) Então

                     button <- "n"

                     Enquanto (button = "n") ou (button = "N") Faça

                        registro_med <- 0

                        //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA MANHÃ

                        Enquanto (registro_med < 1) ou (registro_med > max_med) Faça

                           buttonT <- "s"

                           Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                TURNO DA MANHÃ - CLÍNICO GERAL                              ")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()

                              //MOSTAR RELATORIOS DE MEDICOS DE CLINICOS GERAL

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                    RELATÓRIO DE MÉDICOS")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                              Escreval("--------------------------------------------------------------------------------------------")

                              Para indice_relatorio de 1 ate max_med Faça

                                 Se (med_Cod[indice_relatorio] <> 0) Então

                                    Se (med_Espec[indice_relatorio] = "Clínico geral") entao

                                       Se (med_Cod[indice_relatorio] < 10) Então

                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                       Senao

                                          Se (med_Cod[indice_relatorio] < 100) Então

                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Senao

                                             EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimpara

                              Escreval("============================================================================================")
                              Escreval()

                              Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                              Leia(registro_med)
                              LimpaTela()

                              Se (registro_med < 1) ou (registro_med > max_med) Então

                                 Escreval("==========================================")
                                 Escreval()
                                 Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                 Escreval()
                                 Escreval("==========================================")

                              Senão

                                 Se (med_Cod[registro_med] = 0) Então

                                    Escreval("================================")
                                    Escreval()
                                    Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                    Escreval()
                                    Escreval("================================")

                                 Senão

                                    Se (med_Espec[registro_med] <> "Clínico geral") Então

                                       Escreval("=======================================")
                                       Escreval()
                                       Escreval("ERRO! Médico com especidalidade errada!")
                                       Escreval()
                                       Escreval("=======================================")

                                    Senão

                                       Se (disp_manha[registro_med] <> "Sim") Então

                                          Escreval("=================================")
                                          Escreval()
                                          Escreval("ERRO! Médico Sem Disponibilidade!")
                                          Escreval()
                                          Escreval("=================================")

                                       Senão

                                          Se (turno_manha[registro_med] <> 0) Então

                                             Escreval("=================================")
                                             Escreval()
                                             Escreval("ERRO! Médico JÁ CADASTRADO!")
                                             Escreval()
                                             Escreval("=================================")

                                          Senão

                                             Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                Escreval()
                                                Escreval("====================================================")

                                             Senão

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                Escreval()
                                                Escreval("=================================")

                                                reg_manha[registro_med] <- 1
                                                turno_manha[registro_med] <- 1
                                                qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimse

                              Escreval()
                              Escreval("===================================================")
                              Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                              Escreval("===================================================")
                              Escreval()
                              Escreval("[S] SIM")
                              Escreval("[N] NÃO")
                              Escreval()
                              Escreval("===================================================")
                              Escreval()
                              Escreva("Digite a Opção: ")
                              Leia(buttonT)
                              Limpatela()

                              Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                 Escreval("===================================================")
                                 Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                 Escreval("===================================================")
                                 Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreval("[S] SIM")
                                 Escreval("[N] NÃO")
                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreva("Digite a Opção: ")
                                 Leia(buttonT)
                                 Limpatela()

                              Fimenquanto


                           Fimenquanto

                        Fimenquanto

                        registro_med <- 0

                        Enquanto (registro_med < 1) ou (registro_med > max_med) Faça

                           buttonT <- "s"

                           Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                  TURNO DA MANHÃ - PEDIATRA                                 ")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()

                              //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRAS

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                    RELATÓRIO DE MÉDICOS")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                              Escreval("--------------------------------------------------------------------------------------------")

                              Para indice_relatorio de 1 ate max_med Faça

                                 Se med_Cod[indice_relatorio] <> 0 Então

                                    Se med_Espec[indice_relatorio] = "Pediatra" Então

                                       Se med_Cod[indice_relatorio] < 10 Então

                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                       Senão

                                          Se med_Cod[indice_relatorio] < 100 Então

                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Senão

                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimpara

                              Escreval("============================================================================================")
                              Escreval()

                              Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                              Leia(registro_med)
                              LimpaTela()

                              Se (registro_med < 1) ou (registro_med > max_med) Então

                                 Escreval("==========================================")
                                 Escreval()
                                 Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                 Escreval()
                                 Escreval("==========================================")

                              Senão

                                 Se (registro_med <> med_Cod[registro_med]) Então

                                    Escreval("================================")
                                    Escreval()
                                    Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                    Escreval()
                                    Escreval("================================")

                                 Senão

                                    Se (med_Espec[registro_med] <> "Pediatra") Então

                                       Escreval("=======================================")
                                       Escreval()
                                       Escreval("ERRO! Médico com especidalidade errada!")
                                       Escreval()
                                       Escreval("=======================================")

                                    Senão

                                       Se (disp_manha[registro_med] <> "Sim") Então

                                          Escreval("=================================")
                                          Escreval()
                                          Escreval("ERRO! Médico Sem Disponibilidade!")
                                          Escreval()
                                          Escreval("=================================")

                                       Senão

                                          Se (turno_manha[registro_med] <> 0) Então

                                             Escreval("=================================")
                                             Escreval()
                                             Escreval("ERRO! Médico JÁ CADASTRADO!")
                                             Escreval()
                                             Escreval("=================================")

                                          Senão

                                             Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                Escreval()
                                                Escreval("====================================================")

                                             Senão
                                                Escreval("=================================")
                                                Escreval()
                                                Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                Escreval()
                                                Escreval("=================================")

                                                reg_manha[registro_med] <- 1
                                                turno_manha[registro_med] <- 1
                                                qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimse

                              Escreval()
                              Escreval("===================================================")
                              Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                              Escreval("===================================================")
                              Escreval()
                              Escreval("[S] SIM")
                              Escreval("[N] NÃO")
                              Escreval()
                              Escreval("===================================================")
                              Escreval()
                              Escreva("Digite a Opção: ")
                              Leia(buttonT)
                              Limpatela()

                              Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                 Escreval("===================================================")
                                 Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                 Escreval("===================================================")
                                 Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreval("[S] SIM")
                                 Escreval("[N] NÃO")
                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreva("Digite a Opção: ")
                                 Leia(buttonT)
                                 Limpatela()

                              Fimenquanto

                           Fimenquanto

                        Fimenquanto


                        registro_med <- 0

                        Enquanto (registro_med < 1) OU (registro_med > max_med) Faça

                           buttonT <- "s"

                           Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                  TURNO DA MANHÃ - CIRURGIÃO                                ")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()

                              //MOSTAR RELATORIOS DE MEDICOS DE CIRURGIÃO

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                    RELATÓRIO DE MÉDICOS")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                              Escreval("--------------------------------------------------------------------------------------------")


                              Para indice_relatorio de 1 ate max_med Faça

                                 Se med_Cod[indice_relatorio] <> 0 Então

                                    Se med_Espec[indice_relatorio] = "Cirurgião" Então

                                       Se med_Cod[indice_relatorio] < 10 Então

                                          EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                       Senão

                                          Se med_Cod[indice_relatorio] < 100 Então

                                             EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Senão

                                             EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimpara

                              Escreval("============================================================================================")
                              Escreval

                              Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                              Leia(registro_med)
                              LimpaTela()

                              Se (registro_med < 1) ou (registro_med > max_med) Então

                                 Escreval("==========================================")
                                 Escreval()
                                 Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                 Escreval()
                                 Escreval("==========================================")

                              Senão

                                 Se (registro_med <> med_Cod[registro_med]) Então

                                    Escreval("================================")
                                    Escreval()
                                    Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                    Escreval()
                                    Escreval("================================")

                                 Senão

                                    Se (med_Espec[registro_med] <> "Cirurgião") Então

                                       Escreval("=======================================")
                                       Escreval()
                                       Escreval("ERRO! Médico com especidalidade errada!")
                                       Escreval()
                                       Escreval("=======================================")

                                    Senão

                                       Se (disp_manha[registro_med] <> "Sim") Então

                                          Escreval("=================================")
                                          Escreval()
                                          Escreval("ERRO! Médico Sem Disponibilidade!")
                                          Escreval()
                                          Escreval("=================================")

                                       Senão

                                          Se (turno_manha[registro_med] <> 0) Então

                                             Escreval("=================================")
                                             Escreval()
                                             Escreval("ERRO! Médico JÁ CADASTRADO!")
                                             Escreval()
                                             Escreval("=================================")

                                          Senão


                                             Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                Escreval()
                                                Escreval("====================================================")

                                             Senão

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                Escreval()
                                                Escreval("=================================")

                                                reg_manha[registro_med] <- 1
                                                turno_manha[registro_med] <- 1
                                                qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimse

                              Escreval()
                              Escreval("===================================================")
                              Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                              Escreval("===================================================")
                              Escreval()
                              Escreval("[S] SIM")
                              Escreval("[N] NÃO")
                              Escreval()
                              Escreval("===================================================")
                              Escreval()
                              Escreva("Digite a Opção: ")
                              Leia(buttonT)
                              Limpatela()

                              Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                 Escreval("===================================================")
                                 Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                 Escreval("===================================================")
                                 Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreval("[S] SIM")
                                 Escreval("[N] NÃO")
                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreva("Digite a Opção: ")
                                 Leia(buttonT)
                                 Limpatela()

                              Fimenquanto

                           Fimenquanto

                        Fimenquanto

                        button <- " "

                        Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                           Escreval("========================================")
                           Escreval()
                           Escreval("Confirma o Cadastro do Turno da Manhã?")
                           Escreval()
                           Escreval("[S] SIM")
                           Escreval("[N] NÃO")
                           Escreval()
                           Escreval("========================================")
                           Escreval()
                           Escreva("Escolha uma Opção: ")
                           Leia(button)
                           LimpaTela()

                           Se (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Então

                              Escreval("=====================")
                              Escreval()
                              Escreval("ERRO! OPÇÃO INVÁLIDA!")
                              Escreval()
                              Escreval("=====================")

                           Senão

                              Se (button = "s") ou (button = "S") Então

                                 Escreval("====================================================")
                                 Escreval()
                                 Escreval(" CADASTRO DO TURNO DA MANHÃ CONFIRMADO COM SUCESSO! ")
                                 Escreval()
                                 Escreval("====================================================")

                                 //limpa as marcacoes temporarias da escala confirmada

                                 Para cadastrou de 1 até max_med Faça

                                    reg_manha[cadastrou] <- 0

                                 Fimpara

                              Senão

                                 Se (button = "n") ou (button = "N") Então

                                    Escreval("====================================================")
                                    Escreval()
                                    Escreval("     CADASTRO DO TURNO DA MANHÃ NÃO CONFIRMADO!     ")
                                    Escreval()
                                    Escreval("====================================================")

                                    Para descadastro de 1 até max_med Faça

                                       //apaga as marcacoes da escala nao confirmada

                                       Se (reg_manha[descadastro] = 1) Então

                                          reg_manha[descadastro] <- 0
                                          turno_manha[descadastro] <- 0
                                          qtd_turnos_escalados[descadastro] <- (qtd_turnos_escalados[descadastro] - 1)

                                       Fimse

                                    Fimpara

                                 Fimse

                              Fimse

                           Fimse

                        Fimenquanto

                     Fimenquanto

                  Senão



                     //CADASTRO DO TURNO DA TARDE



                     Se (opcao_esc = 2) Então
                        button <- "n"

                        Enquanto (button = "n") ou (button = "N") Faça

                           registro_med <- 0

                           //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA TARDE

                           Enquanto (registro_med < 1) ou (registro_med > max_med) Faça

                              buttonT <- "s"

                              Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                TURNO DA TARDE - CLÍNICO GERAL                              ")
                                 Escreval()
                                 Escreval("============================================================================================")
                                 Escreval()

                                 //MOSTAR RELATORIOS DE MEDICOS DE CLINICOS GERAL

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                    RELATÓRIO DE MÉDICOS")
                                 Escreval()
                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                                 Escreval("--------------------------------------------------------------------------------------------")

                                 Para indice_relatorio de 1 ate max_med Faça

                                    Se (med_Cod[indice_relatorio] <> 0) Então

                                       Se (med_Espec[indice_relatorio] = "Clínico geral") entao

                                          Se (med_Cod[indice_relatorio] < 10) Então

                                             Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Senao

                                             Se (med_Cod[indice_relatorio] < 100) Então

                                                Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senao

                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimpara

                                 Escreval("============================================================================================")
                                 Escreval()

                                 Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                                 Leia(registro_med)
                                 LimpaTela()

                                 Se (registro_med < 1) ou (registro_med > max_med) Então

                                    Escreval("==========================================")
                                    Escreval()
                                    Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                    Escreval()
                                    Escreval("==========================================")

                                 Senão

                                    Se (med_Cod[registro_med] = 0) Então

                                       Escreval("================================")
                                       Escreval()
                                       Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                       Escreval()
                                       Escreval("================================")

                                    Senão

                                       Se (med_Espec[registro_med] <> "Clínico geral") Então

                                          Escreval("=======================================")
                                          Escreval()
                                          Escreval("ERRO! Médico com especidalidade errada!")
                                          Escreval()
                                          Escreval("=======================================")

                                       Senão

                                          Se (disp_tarde[registro_med] <> "Sim") Então

                                             Escreval("=================================")
                                             Escreval()
                                             Escreval("ERRO! Médico Sem Disponibilidade!")
                                             Escreval()
                                             Escreval("=================================")

                                          Senão

                                             Se (turno_tarde[registro_med] <> 0) Então

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval("ERRO! Médico JÁ CADASTRADO!")
                                                Escreval()
                                                Escreval("=================================")

                                             Senão

                                                Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                   Escreval("====================================================")
                                                   Escreval()
                                                   Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                   Escreval()
                                                   Escreval("====================================================")

                                                Senão

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   reg_tarde[registro_med] <- 1
                                                   turno_tarde[registro_med] <- 1
                                                   qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreval("[S] SIM")
                                 Escreval("[N] NÃO")
                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreva("Digite a Opção: ")
                                 Leia(buttonT)
                                 Limpatela()

                                 Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                    Escreval("===================================================")
                                    Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                    Escreval("===================================================")
                                    Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("[S] SIM")
                                    Escreval("[N] NÃO")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreva("Digite a Opção: ")
                                    Leia(buttonT)
                                    Limpatela()

                                 Fimenquanto


                              Fimenquanto

                           Fimenquanto

                           registro_med <- 0

                           //REGISTRAR OS PEDIATRAS DO TURNO DA TARDE

                           Enquanto (registro_med < 1) ou (registro_med > max_med) Faça

                              buttonT <- "s"

                              Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                  TURNO DA TARDE - PEDIATRA                                 ")
                                 Escreval()
                                 Escreval("============================================================================================")
                                 Escreval()

                                 //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRAS

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                    RELATÓRIO DE MÉDICOS")
                                 Escreval()
                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                                 Escreval("--------------------------------------------------------------------------------------------")

                                 Para indice_relatorio de 1 ate max_med Faça

                                    Se med_Cod[indice_relatorio] <> 0 Então

                                       Se med_Espec[indice_relatorio] = "Pediatra" Então

                                          Se med_Cod[indice_relatorio] < 10 Então

                                             Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Senão

                                             Se med_Cod[indice_relatorio] < 100 Então

                                                Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimpara

                                 Escreval("============================================================================================")
                                 Escreval()

                                 Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                                 Leia(registro_med)
                                 LimpaTela()

                                 Se (registro_med < 1) ou (registro_med > max_med) Então

                                    Escreval("==========================================")
                                    Escreval()
                                    Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                    Escreval()
                                    Escreval("==========================================")

                                 Senão

                                    Se (registro_med <> med_Cod[registro_med]) Então

                                       Escreval("================================")
                                       Escreval()
                                       Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                       Escreval()
                                       Escreval("================================")

                                    Senão

                                       Se (med_Espec[registro_med] <> "Pediatra") Então

                                          Escreval("=======================================")
                                          Escreval()
                                          Escreval("ERRO! Médico com especidalidade errada!")
                                          Escreval()
                                          Escreval("=======================================")

                                       Senão

                                          Se (disp_tarde[registro_med] <> "Sim") Então

                                             Escreval("=================================")
                                             Escreval()
                                             Escreval("ERRO! Médico Sem Disponibilidade!")
                                             Escreval()
                                             Escreval("=================================")

                                          Senão

                                             Se (turno_tarde[registro_med] <> 0) Então

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval("ERRO! Médico JÁ CADASTRADO!")
                                                Escreval()
                                                Escreval("=================================")

                                             Senão

                                                Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                   Escreval("====================================================")
                                                   Escreval()
                                                   Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                   Escreval()
                                                   Escreval("====================================================")

                                                Senão

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   reg_tarde[registro_med] <- 1
                                                   turno_tarde[registro_med] <- 1
                                                   qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreval("[S] SIM")
                                 Escreval("[N] NÃO")
                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreva("Digite a Opção: ")
                                 Leia(buttonT)
                                 Limpatela()

                                 Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                    Escreval("===================================================")
                                    Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                    Escreval("===================================================")
                                    Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("[S] SIM")
                                    Escreval("[N] NÃO")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreva("Digite a Opção: ")
                                    Leia(buttonT)
                                    Limpatela()

                                 Fimenquanto

                              Fimenquanto

                           Fimenquanto

                           registro_med <- 0

                           Enquanto (registro_med < 1) OU (registro_med > max_med) Faça

                              buttonT <- "s"

                              //REGISTRAR OS CIRURGIÕES DO TURNO DA TARDE

                              Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                  TURNO DA TARDE - CIRURGIÃO                                ")
                                 Escreval()
                                 Escreval("============================================================================================")
                                 Escreval()

                                 //MOSTAR RELATORIOS DE MEDICOS DE CIRURGIÃO

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                    RELATÓRIO DE MÉDICOS")
                                 Escreval()
                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                                 Escreval("--------------------------------------------------------------------------------------------")


                                 Para indice_relatorio de 1 ate max_med Faça

                                    Se med_Cod[indice_relatorio] <> 0 Então

                                       Se med_Espec[indice_relatorio] = "Cirurgião" Então

                                          Se med_Cod[indice_relatorio] < 10 Então

                                             EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                          Senão

                                             Se med_Cod[indice_relatorio] < 100 Então

                                                EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimpara

                                 Escreval("============================================================================================")
                                 Escreval

                                 Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                                 Leia(registro_med)
                                 LimpaTela()

                                 Se (registro_med < 1) ou (registro_med > max_med) Então

                                    Escreval("==========================================")
                                    Escreval()
                                    Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                    Escreval()
                                    Escreval("==========================================")

                                 Senão

                                    Se (registro_med <> med_Cod[registro_med]) Então

                                       Escreval("================================")
                                       Escreval()
                                       Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                       Escreval()
                                       Escreval("================================")

                                    Senão

                                       Se (med_Espec[registro_med] <> "Cirurgião") Então

                                          Escreval("=======================================")
                                          Escreval()
                                          Escreval("ERRO! Médico com especidalidade errada!")
                                          Escreval()
                                          Escreval("=======================================")

                                       Senão

                                          Se (disp_tarde[registro_med] <> "Sim") Então

                                             Escreval("=================================")
                                             Escreval()
                                             Escreval("ERRO! Médico Sem Disponibilidade!")
                                             Escreval()
                                             Escreval("=================================")

                                          Senão

                                             Se (turno_tarde[registro_med] <> 0) Então

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval("ERRO! Médico JÁ CADASTRADO!")
                                                Escreval()
                                                Escreval("=================================")

                                             Senão


                                                Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                   Escreval("====================================================")
                                                   Escreval()
                                                   Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                   Escreval()
                                                   Escreval("====================================================")

                                                Senão

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   reg_tarde[registro_med] <- 1
                                                   turno_tarde[registro_med] <- 1
                                                   qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreval("[S] SIM")
                                 Escreval("[N] NÃO")
                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreva("Digite a Opção: ")
                                 Leia(buttonT)
                                 Limpatela()

                                 Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                    Escreval("===================================================")
                                    Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                    Escreval("===================================================")
                                    Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("[S] SIM")
                                    Escreval("[N] NÃO")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreva("Digite a Opção: ")
                                    Leia(buttonT)
                                    Limpatela()

                                 Fimenquanto

                              Fimenquanto

                           Fimenquanto

                           button <- " "

                           //CONFIRMACAO DE CADASTRO DO TURNO DA TARDE

                           Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                              Escreval("=========================================")
                              Escreval()
                              Escreval("  CONFIRMA o Cadastro do Turno da TARDE  ")
                              Escreval()
                              Escreval("[S] SIM")
                              Escreval("[N] NÃO")
                              Escreval()
                              Escreval("=========================================")
                              Escreval()
                              Escreva("Escolha uma Opção: ")
                              Leia(button)
                              LimpaTela()

                              Se (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Então

                                 Escreval("=====================")
                                 Escreval()
                                 Escreval("ERRO! OPÇÃO INVÁLIDA!")
                                 Escreval()
                                 Escreval("=====================")

                              Senão

                                 Se (button = "s") ou (button = "S") Então

                                    Escreval("====================================================")
                                    Escreval()
                                    Escreval(" CADASTRO DO TURNO DA TARDE CONFIRMADO COM SUCESSO! ")
                                    Escreval()
                                    Escreval("====================================================")

                                    //limpa as marcacoes temporarias da escala confirmada

                                    Para cadastrou de 1 até max_med Faça

                                       reg_tarde[cadastrou] <- 0

                                    Fimpara

                                 Senão

                                    Se (button = "n") ou (button = "N") Então

                                       Escreval("====================================================")
                                       Escreval()
                                       Escreval("     CADASTRO DO TURNO DA TARDE NÃO CONFIRMADO!     ")
                                       Escreval()
                                       Escreval("====================================================")

                                       //apaga as marcacoes da escala nao confirmada

                                       Para descadastro de 1 até max_med Faça

                                          Se (reg_tarde[descadastro] = 1) Então

                                             reg_tarde[descadastro] <- 0
                                             turno_tarde[descadastro] <- 0
                                             qtd_turnos_escalados[descadastro] <- (qtd_turnos_escalados[descadastro] - 1)

                                          Fimse

                                       Fimpara

                                    Fimse

                                 Fimse

                              Fimse

                           Fimenquanto

                        Fimenquanto

                     Senão




                        //CADASTRO DO TURNO DA NOITE




                        Se (opcao_esc = 3) Então

                           button <- "n"

                           Enquanto (button = "n") ou (button = "N") Faça

                              registro_med <- 0

                              //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA NOITE

                              Enquanto (registro_med < 1) ou (registro_med > max_med) Faça

                                 buttonT <- "s"

                                 Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                TURNO DA NOITE - CLÍNICO GERAL                              ")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()

                                    //MOSTAR RELATORIOS DE MEDICOS DE CLINICOS GERAL

                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                    RELATÓRIO DE MÉDICOS")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                                    Escreval("--------------------------------------------------------------------------------------------")

                                    Para indice_relatorio de 1 ate max_med Faça

                                       Se (med_Cod[indice_relatorio] <> 0) Então

                                          Se (med_Espec[indice_relatorio] = "Clínico geral") entao

                                             Se (med_Cod[indice_relatorio] < 10) Então

                                                Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senao

                                                Se (med_Cod[indice_relatorio] < 100) Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Senao

                                                   EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimpara

                                    Escreval("============================================================================================")
                                    Escreval()

                                    Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                                    Leia(registro_med)
                                    LimpaTela()

                                    Se (registro_med < 1) ou (registro_med > max_med) Então

                                       Escreval("==========================================")
                                       Escreval()
                                       Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==========================================")

                                    Senão

                                       Se (med_Cod[registro_med] = 0) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Clínico geral") Então

                                             Escreval("=======================================")
                                             Escreval()
                                             Escreval("ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("=======================================")

                                          Senão

                                             Se (disp_noite[registro_med] <> "Sim") Então

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval("ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=================================")

                                             Senão

                                                Se (turno_noite[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval("ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                Senão

                                                   Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                      Escreval("====================================================")
                                                      Escreval()
                                                      Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                      Escreval()
                                                      Escreval("====================================================")

                                                   Senão

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                      reg_noite[registro_med] <- 1
                                                      turno_noite[registro_med] <- 1
                                                      qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("[S] SIM")
                                    Escreval("[N] NÃO")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreva("Digite a Opção: ")
                                    Leia(buttonT)
                                    Limpatela()

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval("===================================================")
                                       Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                       Escreval("===================================================")
                                       Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("[S] SIM")
                                       Escreval("[N] NÃO")
                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreva("Digite a Opção: ")
                                       Leia(buttonT)
                                       Limpatela()

                                    Fimenquanto


                                 Fimenquanto

                              Fimenquanto

                              registro_med <- 0

                              //REGISTRAR OS PEDIATRAS DO TURNO DA NOITE

                              Enquanto (registro_med < 1) ou (registro_med > max_med) Faça

                                 buttonT <- "s"

                                 Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                  TURNO DA NOITE - PEDIATRA                                 ")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()

                                    //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRAS

                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                    RELATÓRIO DE MÉDICOS")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                                    Escreval("--------------------------------------------------------------------------------------------")

                                    Para indice_relatorio de 1 ate max_med Faça

                                       Se med_Cod[indice_relatorio] <> 0 Então

                                          Se med_Espec[indice_relatorio] = "Pediatra" Então

                                             Se med_Cod[indice_relatorio] < 10 Então

                                                Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Se med_Cod[indice_relatorio] < 100 Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimpara

                                    Escreval("============================================================================================")
                                    Escreval()

                                    Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                                    Leia(registro_med)
                                    LimpaTela()

                                    Se (registro_med < 1) ou (registro_med > max_med) Então

                                       Escreval("==========================================")
                                       Escreval()
                                       Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==========================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Pediatra") Então

                                             Escreval("=======================================")
                                             Escreval()
                                             Escreval("ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("=======================================")

                                          Senão

                                             Se (disp_noite[registro_med] <> "Sim") Então

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval("ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=================================")

                                             Senão

                                                Se (turno_noite[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval("ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                Senão

                                                   Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                      Escreval("====================================================")
                                                      Escreval()
                                                      Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                      Escreval()
                                                      Escreval("====================================================")

                                                   Senão

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                      reg_noite[registro_med] <- 1
                                                      turno_noite[registro_med] <- 1
                                                      qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("[S] SIM")
                                    Escreval("[N] NÃO")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreva("Digite a Opção: ")
                                    Leia(buttonT)
                                    Limpatela()

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval("===================================================")
                                       Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                       Escreval("===================================================")
                                       Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("[S] SIM")
                                       Escreval("[N] NÃO")
                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreva("Digite a Opção: ")
                                       Leia(buttonT)
                                       Limpatela()

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              registro_med <- 0

                              //REGISTRAR OS CIRURGIÕES DO TURNO DA NOITE

                              Enquanto (registro_med < 1) OU (registro_med > max_med) Faça

                                 buttonT <- "s"

                                 Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                  TURNO DA NOITE - CIRURGIÃO                                ")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()

                                    //MOSTAR RELATORIOS DE MEDICOS DE CIRURGIÃO

                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                    RELATÓRIO DE MÉDICOS")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("REGISTRO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                                    Escreval("--------------------------------------------------------------------------------------------")


                                    Para indice_relatorio de 1 ate max_med Faça

                                       Se med_Cod[indice_relatorio] <> 0 Então

                                          Se med_Espec[indice_relatorio] = "Cirurgião" Então

                                             Se med_Cod[indice_relatorio] < 10 Então

                                                EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Se med_Cod[indice_relatorio] < 100 Então

                                                   EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimpara

                                    Escreval("============================================================================================")
                                    Escreval

                                    Escreva("CADASTRE o Médico pelo NÚMERO DO REGISTRO: ")
                                    Leia(registro_med)
                                    LimpaTela()

                                    Se (registro_med < 1) ou (registro_med > max_med) Então

                                       Escreval("==========================================")
                                       Escreval()
                                       Escreval("ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==========================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Cirurgião") Então

                                             Escreval("=======================================")
                                             Escreval()
                                             Escreval("ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("=======================================")

                                          Senão

                                             Se (disp_noite[registro_med] <> "Sim") Então

                                                Escreval("=================================")
                                                Escreval()
                                                Escreval("ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=================================")

                                             Senão

                                                Se (turno_noite[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval("ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                Senão

                                                   Se (qtd_turnos_escalados[registro_med] = 2) Então

                                                      Escreval("====================================================")
                                                      Escreval()
                                                      Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                                      Escreval()
                                                      Escreval("====================================================")

                                                   Senão

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(" MÉDICO CADASTRADO COM SUCESSO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                      reg_noite[registro_med] <- 1
                                                      turno_noite[registro_med] <- 1
                                                      qtd_turnos_escalados[registro_med] <- (qtd_turnos_escalados[registro_med] + 1)

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("[S] SIM")
                                    Escreval("[N] NÃO")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreva("Digite a Opção: ")
                                    Leia(buttonT)
                                    Limpatela()

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval("===================================================")
                                       Escreval("          ERRO! DIGITE UMA OPÇÃO VÁLIDA!.          ")
                                       Escreval("===================================================")
                                       Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("[S] SIM")
                                       Escreval("[N] NÃO")
                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreva("Digite a Opção: ")
                                       Leia(buttonT)
                                       Limpatela()

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              button <- " "

                              //CONFIRMAR CADASTRO DO TURNO DA NOITE

                              Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                 Escreval("========================================")
                                 Escreval()
                                 Escreval("CONFIRMA o Cadastro do Turno da NOITE?")
                                 Escreval()
                                 Escreval("[S] SIM")
                                 Escreval("[N] NÃO")
                                 Escreval()
                                 Escreval("========================================")
                                 Escreval()
                                 Escreva("Escolha uma Opção: ")
                                 Leia(button)
                                 LimpaTela()

                                 Se (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Então

                                    Escreval("=====================")
                                    Escreval()
                                    Escreval("ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=====================")

                                 Senão

                                    Se (button = "s") ou (button = "S") Então

                                       Escreval("====================================================")
                                       Escreval()
                                       Escreval(" CADASTRO DO TURNO DA NOITE CONFIRMADO COM SUCESSO! ")
                                       Escreval()
                                       Escreval("====================================================")

                                       //limpa as marcacoes temporarias da escala confirmada

                                       Para cadastrou de 1 até max_med Faça

                                          reg_noite[cadastrou] <- 0

                                       Fimpara

                                    Senão

                                       Se (button = "n") ou (button = "N") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("     CADASTRO DO TURNO DA NOITE NÃO CONFIRMADO!     ")
                                          Escreval()
                                          Escreval("====================================================")

                                          //apaga as marcacoes da escala nao confirmada

                                          Para descadastro de 1 até max_med Faça

                                             Se (reg_noite[descadastro] = 1) Então

                                                reg_noite[descadastro] <- 0
                                                turno_noite[descadastro] <- 0
                                                qtd_turnos_escalados[descadastro] <- (qtd_turnos_escalados[descadastro] - 1)

                                             Fimse

                                          Fimpara

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimenquanto

                           Fimenquanto

                        Senão




                           //OPCAO DE SAIR DO CADASTRO DE PLANTAO




                           Se (opcao_esc = 4) Então

                              Escreval("==============================================")
                              Escreval()
                              Escreval("    SAINDO DA OPÇÃO DE CADASTRO DE MÉDICOS    ")
                              Escreval()
                              Escreval("==============================================")
                              Limpatela()

                           Senão




                              //OPCAO INVALIDA DE CADASTRO DE PLANTAO




                              Se (opcao_esc < 1 ) ou (opcao_esc > 4) Então

                                 Escreval("==========================================")
                                 Escreval()
                                 Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 a 4!")
                                 Escreval()
                                 Escreval("==========================================")

                              Fimse

                           Fimse

                        Fimse

                     Fimse

                  Fimse

               Fimenquanto

            Senão

               LimpaTela()

               opcao_esc <- 0

               //VALIDADOR DE PLANTAO

               Se (opcao_menu = 4) Então

                  Enquanto (opcao_esc <> 5) Faça

                     Escreval()
                     Escreval("==========================================")
                     Escreval()
                     Escreval("              VALIDAR PLANTÃO             ")
                     Escreval()
                     Escreval("==========================================")
                     Escreval()
                     Escreval("            1 - TURNO DA MANHÃ            ")
                     Escreval("            2 - TURNO DA TARDE            ")
                     Escreval("            3 - TURNO DA NOITE            ")
                     Escreval("            4 - DIA (PLANTÃO 24 HRS)      ")
                     Escreval("            5 - SAIR                      ")
                     Escreval()
                     Escreval("==========================================")
                     Escreval()
                     Escreva("Escolha uma opção: ")
                     Leia(opcao_esc)
                     LimpaTela()

                     //VALIDAR MANHA

                     Se (opcao_esc = 1) Então

                        valida_cg_manha <- 0
                        valida_p_manha <- 0
                        valida_c_manha <- 0
                        falta_cg_manha <- 0
                        falta_p_manha <- 0
                        falta_c_manha <- 0

                        Para contador_escala de 1 até max_med Faça

                           Se (turno_manha[contador_escala] = 1) Então

                              Se (med_Espec[contador_escala] = "Clínico geral") Então

                                 valida_cg_manha <- (valida_cg_manha + 1)

                              Senão

                                 Se (med_Espec[contador_escala] = "Pediatra") Então

                                    valida_p_manha <- (valida_p_manha + 1)

                                 Senão

                                    Se (med_Espec[contador_escala] = "Cirurgião") Então

                                       valida_c_manha <- (valida_c_manha + 1)

                                    Fimse

                                 Fimse

                              Fimse

                           Fimse

                        Fimpara

                        Se (valida_cg_manha >= 2) e (valida_p_manha >= 1) e (valida_c_manha >= 1) Então

                           Escreval()
                           Escreval("===========================================")
                           Escreval()
                           Escreval("  PLANTÃO DA MANHÃ * PODE * SER PUBLICADO  ")
                           Escreval()
                           Escreval("===========================================")
                           Escreval()

                        Senão

                           Escreval()
                           Escreval("===========================================")
                           Escreval()
                           Escreval("PLANTÃO DA MANHÃ * NÃO PODE * SER PUBLICADO")
                           Escreval()
                           Escreval("===========================================")
                           Escreval()

                           Se (valida_cg_manha < 2) Então

                              falta_cg_manha <- (2 - valida_cg_manha)

                           Fimse

                           Se (valida_p_manha < 1) Então

                              falta_p_manha <- (1 - valida_p_manha)

                           Fimse

                           Se (valida_c_manha < 1) Então

                              falta_c_manha <- (1 - valida_c_manha)

                           Fimse

                           Escreval()
                           Escreval("===================================================")
                           Escreval()
                           Escreval("                     RELATÓRIO                     ")
                           Escreval()
                           Escreval("===================================================")
                           Escreval(" - FALTAM: ", falta_cg_manha, " CLÍNICO(S) GERAL(IS)")
                           Escreval(" - FALTAM: ", falta_p_manha, " PEDIATRA")
                           Escreval(" - FALTAM: ", falta_c_manha, " CIRURGIÃO")
                           Escreval()

                        Fimse

                     Senão

                        //VALIDAR TARDE

                        Se (opcao_esc = 2) Então

                           valida_cg_tarde <- 0
                           valida_p_tarde <- 0
                           valida_c_tarde <- 0
                           falta_cg_tarde <- 0
                           falta_p_tarde <- 0
                           falta_c_tarde <- 0

                           Para contador_escala de 1 até max_med Faça

                              Se (turno_tarde[contador_escala] = 1) Então

                                 Se (med_Espec[contador_escala] = "Clínico geral") Então

                                    valida_cg_tarde <- (valida_cg_tarde + 1)

                                 Senão

                                    Se (med_Espec[contador_escala] = "Pediatra") Então

                                       valida_p_tarde <- (valida_p_tarde + 1)

                                    Senão

                                       Se (med_Espec[contador_escala] = "Cirurgião") Então

                                          valida_c_tarde <- (valida_c_tarde + 1)

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimse

                           Fimpara

                           Se (valida_cg_tarde >= 2) e (valida_p_tarde >= 1) e (valida_c_tarde >= 1) Então

                              Escreval("===========================================")
                              Escreval()
                              Escreval("  PLANTÃO DA TARDE * PODE * SER PUBLICADO  ")
                              Escreval()
                              Escreval("===========================================")

                           Senão

                              Escreval("===========================================")
                              Escreval()
                              Escreval("PLANTÃO DA TARDE * NÃO PODE * SER PUBLICADO")
                              Escreval()
                              Escreval("===========================================")
                              Escreval()

                              Se (valida_cg_tarde < 2) Então

                                 falta_cg_tarde <- (2 - valida_cg_tarde)

                              Fimse

                              Se (valida_p_tarde < 1) Então

                                 falta_p_tarde <- (1 - valida_p_tarde)

                              Fimse

                              Se (valida_c_tarde < 1) Então

                                 falta_c_tarde <- (1 - valida_c_tarde)

                              Fimse

                              Escreval()
                              Escreval("===================================================")
                              Escreval()
                              Escreval("                     RELATÓRIO                     ")
                              Escreval()
                              Escreval("===================================================")
                              Escreval(" - FALTAM: ", falta_cg_tarde, " CLÍNICO(S) GERAL(IS)")
                              Escreval(" - FALTAM: ", falta_p_tarde, " PEDIATRA")
                              Escreval(" - FALTAM: ", falta_c_tarde, " CIRURGIÃO")
                              Escreval()

                           Fimse

                        Senão

                           //VALIDAR NOITE

                           Se (opcao_esc = 3) Então

                              valida_cg_noite <- 0
                              valida_p_noite <- 0
                              valida_c_noite <- 0
                              falta_cg_noite <- 0
                              falta_p_noite <- 0
                              falta_c_noite <- 0

                              Para contador_escala de 1 até max_med Faça

                                 Se (turno_noite[contador_escala] = 1) Então

                                    Se (med_Espec[contador_escala] = "Clínico geral") Então

                                       valida_cg_noite <- (valida_cg_noite + 1)

                                    Senão

                                       Se (med_Espec[contador_escala] = "Pediatra") Então

                                          valida_p_noite <- (valida_p_noite + 1)

                                       Senão

                                          Se (med_Espec[contador_escala] = "Cirurgião") Então

                                             valida_c_noite <- (valida_c_noite + 1)

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimpara

                              Se (valida_cg_noite >= 2) e (valida_p_noite >= 1) e (valida_c_noite >= 1) Então

                                 Escreval("===========================================")
                                 Escreval()
                                 Escreval("  PLANTÃO DA NOITE * PODE * SER PUBLICADO  ")
                                 Escreval()
                                 Escreval("===========================================")

                              Senão

                                 Escreval("===========================================")
                                 Escreval()
                                 Escreval("PLANTÃO DA NOITE * NÃO PODE * SER PUBLICADO")
                                 Escreval()
                                 Escreval("===========================================")

                                 Se (valida_cg_noite < 2) Então

                                    falta_cg_noite <- (2 - valida_cg_noite)

                                 Fimse

                                 Se (valida_p_noite < 1) Então

                                    falta_p_noite <- (1 - valida_p_noite)

                                 Fimse

                                 Se (valida_c_noite < 1) Então

                                    falta_c_noite <- (1 - valida_c_noite)

                                 Fimse

                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval()
                                 Escreval("                     RELATÓRIO                     ")
                                 Escreval()
                                 Escreval("===================================================")
                                 Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                 Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                 Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                 Escreval()

                              Fimse

                           Senão

                              //VALIDAR AS 24 HRS (OU SEJA OS TRES TURNOS JUNTOS)

                              Se (opcao_esc = 4) Então

                                 valida_cg_manha <- 0
                                 valida_p_manha <- 0
                                 valida_c_manha <- 0
                                 valida_cg_tarde <- 0
                                 valida_p_tarde <- 0
                                 valida_c_tarde <- 0
                                 valida_cg_noite <- 0
                                 valida_p_noite <- 0
                                 valida_c_noite <- 0
                                 falta_cg_manha <- 0
                                 falta_p_manha <- 0
                                 falta_c_manha <- 0
                                 falta_cg_tarde <- 0
                                 falta_p_tarde <- 0
                                 falta_c_tarde <- 0
                                 falta_cg_noite <- 0
                                 falta_p_noite <- 0
                                 falta_c_noite <- 0

                                 Para contador_escala de 1 até max_med Faça

                                    Se (turno_manha[contador_escala] = 1) Então

                                       Se (med_Espec[contador_escala] = "Clínico geral") Então

                                          valida_cg_manha <- (valida_cg_manha + 1)

                                       Senão

                                          Se (med_Espec[contador_escala] = "Pediatra") Então

                                             valida_p_manha <- (valida_p_manha + 1)

                                          Senão

                                             Se (med_Espec[contador_escala] = "Cirurgião") Então

                                                valida_c_manha <- (valida_c_manha + 1)

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse


                                    Se (turno_tarde[contador_escala] = 1) Então

                                       Se (med_Espec[contador_escala] = "Clínico geral") Então

                                          valida_cg_tarde <- (valida_cg_tarde + 1)

                                       Senão

                                          Se (med_Espec[contador_escala] = "Pediatra") Então

                                             valida_p_tarde <- (valida_p_tarde + 1)

                                          Senão

                                             Se (med_Espec[contador_escala] = "Cirurgião") Então

                                                valida_c_tarde <- (valida_c_tarde + 1)

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse


                                    Se (turno_noite[contador_escala] = 1) Então

                                       Se (med_Espec[contador_escala] = "Clínico geral") Então

                                          valida_cg_noite <- (valida_cg_noite + 1)

                                       Senão

                                          Se (med_Espec[contador_escala] = "Pediatra") Então

                                             valida_p_noite <- (valida_p_noite + 1)

                                          Senão

                                             Se (med_Espec[contador_escala] = "Cirurgião") Então

                                                valida_c_noite <- (valida_c_noite + 1)

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimpara

                                 Se ((valida_cg_manha >= 2) e (valida_p_manha >= 1) e (valida_c_manha >= 1) e (valida_cg_tarde >= 2) e (valida_p_tarde >= 1) e (valida_c_tarde >= 1) e (valida_cg_noite >= 2) e (valida_p_noite >= 1) e (valida_c_noite >= 1)) Então

                                    Escreval("============================================")
                                    Escreval()
                                    Escreval("  PLANTÃO DE 24 HRS * PODE * SER PUBLICADO  ")
                                    Escreval()
                                    Escreval("============================================")

                                 Senão

                                    Escreval("============================================")
                                    Escreval()
                                    Escreval("PLANTÃO DE 24 HRS * NÃO PODE * SER PUBLICADO")
                                    Escreval()
                                    Escreval("============================================")

                                    Se (valida_cg_manha < 2) Então

                                       falta_cg_manha <- (2 - valida_cg_manha)

                                    Fimse

                                    Se (valida_p_manha < 1) Então

                                       falta_p_manha <- (1 - valida_p_manha)

                                    Fimse

                                    Se (valida_c_manha < 1) Então

                                       falta_c_manha <- (1 - valida_c_manha)

                                    Fimse

                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("                 RELATÓRIO - MANHÃ                 ")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval(" - FALTAM: ", falta_cg_manha, " CLÍNICO(S) GERAL(IS)")
                                    Escreval(" - FALTAM: ", falta_p_manha, " PEDIATRA")
                                    Escreval(" - FALTAM: ", falta_c_manha, " CIRURGIÃO")
                                    Escreval()

                                    Se (valida_cg_tarde < 2) Então

                                       falta_cg_tarde <- (2 - valida_cg_tarde)

                                    Fimse

                                    Se (valida_p_tarde < 1) Então

                                       falta_p_tarde <- (1 - valida_p_tarde)

                                    Fimse

                                    Se (valida_c_tarde < 1) Então

                                       falta_c_tarde <- (1 - valida_c_tarde)

                                    Fimse

                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("                 RELATÓRIO - TARDE                 ")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval(" - FALTAM: ", falta_cg_tarde, " CLÍNICO(S) GERAL(IS)")
                                    Escreval(" - FALTAM: ", falta_p_tarde, " PEDIATRA")
                                    Escreval(" - FALTAM: ", falta_c_tarde, " CIRURGIÃO")
                                    Escreval()

                                    Se (valida_cg_noite < 2) Então

                                       falta_cg_noite <- (2 - valida_cg_noite)

                                    Fimse

                                    Se (valida_p_noite < 1) Então

                                       falta_p_noite <- (1 - valida_p_noite)

                                    Fimse

                                    Se (valida_c_noite < 1) Então

                                       falta_c_noite <- (1 - valida_c_noite)

                                    Fimse

                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval()
                                    Escreval("                 RELATÓRIO - NOITE                 ")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                    Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                    Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                    Escreval()

                                 Fimse

                              Senão

                                 Se (opcao_esc = 5) Então

                                    Escreval()
                                    Escreval("============================================")
                                    Escreval()
                                    Escreval("    ** SAINDO DA VALIDAÇÃO DE PLANTÃO **    ")
                                    Escreval()
                                    Escreval("============================================")

                                 Senão

                                    Escreval()
                                    Escreval("=============================================")
                                    Escreval()
                                    Escreval("ERRO! OPÇÃO INVÁLIDA! DIGITE UMA OPÇÃO VÁLIDA")
                                    Escreval()
                                    Escreval("=============================================")

                                 Fimse

                              Fimse

                           Fimse

                        Fimse

                     Fimse

                  Fimenquanto

               Senão

                  //SAINDO DO PROGRAMA

                  Se (opcao_menu = 5) Então

                     Escreval()
                     Escreval("==============================================")
                     Escreval()
                     Escreval("      **** BYE! SAINDO DO PROGRAMA! ****      ")
                     Escreval()
                     Escreval("==============================================")

                  Senão

                     //SE USUARIO DIGITOU OPCAO INVALIDA NO MENU PRINCIPAL

                     Escreval("==========================================")
                     Escreval()
                     Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 a 5!")
                     Escreval()
                     Escreval("==========================================")

                  Fimse

               Fimse

            Fimse

         Fimse

      Fimse

   FimEnquanto

Fimalgoritmo
