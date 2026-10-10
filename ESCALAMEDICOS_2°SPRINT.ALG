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

   opcao_menu,opcao_esc,registro_med:inteiro
   pare, button: caractere


   //variaveis referentes ao cadastro de usuarios:
   med_Cod: vetor[1..max_med] de inteiro
   med_Nome: vetor [1..max_med] de caractere
   med_Espec: vetor [1..max_med] de caractere
   disp_manha: vetor [1..max_med] de caractere
   disp_tarde: vetor [1..max_med] de caractere
   disp_noite: vetor [1..max_med] de caractere
   qtd_turnos_escalados: vetor[1..max_med] de inteiro
   i: inteiro
   id: inteiro
   opcao: inteiro
   continuar: caractere

   //variaveis para consulta
   indice_relatorio: inteiro
   indice_encontrado: inteiro
   consulta_codigo: inteiro
   encontrado: logico


Inicio

   opcao_menu <- 0
   i <- 0
   id <- 0
   opcao <- 0

   Enquanto (opcao_menu <> 4) Faça

      Escreval("=========================================")
      Escreval("       MEDSHIFT - MENU PRINCIPAL")
      Escreval("=========================================")
      Escreval()
      Escreval("        1 - CADASTRAR MÉDICOS")
      Escreval("        2 - CONSULTAR CADASTROS")
      Escreval("        3 - MONTAR ESCALA")
      Escreval("        4 - ENCERRAR PROGRAMA")
      Escreval()
      Escreval("_________________________________________")
      Escreval()
      Escreva("Escolha uma opção: ")
      Leia(opcao_menu)
      LimpaTela()

      //CADASTRO DE MÉDICO

      Se (opcao_menu = 1) Então

         i <- (i + 1)
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
         Escreval("APERTE [ENTER] PARA CONTINUAR")
         Escreval()
         Leia(continuar)
         LimpaTela()

      Senão

         Se (opcao_menu = 2) Então

            LimpaTela()
            Escreval("==================================")
            Escreval()
            Escreval("Digite o REGISTRO a ser consultado")
            Escreval()
            Escreval("__________________________________")
            Escreval()
            Escreva("REGISTRO: ")
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
            Escreval("APERTE [ENTER] PARA CONTINUAR")
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

                  Se (opcao_esc = 1) Então

                     button <- "n"

                     Enquanto (button = "n") ou (button = "N") Faça

                        registro_med <- 0

                        //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA MANHÃ

                        Enquanto (registro_med < 1) ou (registro_med > max_Med) Faça

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

                           Escreva("Selecione o Médico pelo NÚMERO DO REGISTRO: ")
                           Leia(registro_med)
                           LimpaTela()

                           Se (registro_med < 1) ou (registro_med > max_Med) Então

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

                                       Se ((turno_manha[registro_med] + turno_tarde[registro_med] + turno_noite[registro_med])= 2) Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          turno_manha[registro_med] <- turno_manha[registro_med] + 1

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimse

                           Fimse

                        Fimenquanto

                        registro_med <- 0

                        Enquanto (registro_med < 1) ou (registro_med > max_Med) Faça

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

                           Escreva("Selecione o Médico pelo NÚMERO DO REGISTRO: ")
                           Leia(registro_med)
                           LimpaTela()

                           Se (registro_med < 1) ou (registro_med > max_Med) Então

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

                                       Se ((turno_manha[registro_med] + turno_tarde[registro_med] + turno_noite[registro_med])= 2) Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          turno_manha[registro_med] <- turno_manha[registro_med] + 1

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimse

                           Fimse

                        Fimenquanto


                        registro_med <- 0

                        Enquanto (registro_med < 1) OU (registro_med > max_Med) Faça

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

                              fimse

                           Fimpara

                           Escreval("============================================================================================")
                           Escreval

                           Escreva("Selecione o Médico pelo NÚMERO DO REGISTRO: ")
                           Leia(registro_med)
                           LimpaTela()

                           Se (registro_med < 1) ou (registro_med > max_Med) Então

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

                                       Se ((turno_manha[registro_med] + turno_tarde[registro_med] + turno_noite[registro_med])= 2) Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS!")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          turno_manha[registro_med] <- turno_manha[registro_med] + 1

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimse

                           Fimse

                        Fimenquanto

                        button <- " "

                        Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                           Escreval("========================================")
                           Escreval()
                           Escreval("Confirma o Cadastro do Turno da Manhã?")
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

                           Fimse

                        Fimenquanto


                     Fimenquanto

                  Senão

                     Se (opcao_esc = 2) Então

                     Senão

                        Se (opcao_esc = 3) Então

                        Senão

                           Se (opcao_esc = 4) Então

                              Limpatela()

                           Fimse

                        Fimse

                     Fimse

                  Fimse

                  Se (opcao_esc < 1 ) ou (opcao_esc > 4) Então

                     Escreval("==========================================")
                     Escreval()
                     Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 a 4!")
                     Escreval()
                     Escreval("==========================================")

                  Fimse

               Fimenquanto

            Senão

               Se (opcao_menu = 4) Então

                  Escreval("BYE! Programa encerrado!")

               Senão

                  Escreval("==========================================")
                  Escreval()
                  Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 a 4!")
                  Escreval()
                  Escreval("==========================================")


               FimSe

            FimSe

         FimSe

      FimSe

   FimEnquanto

Fimalgoritmo
