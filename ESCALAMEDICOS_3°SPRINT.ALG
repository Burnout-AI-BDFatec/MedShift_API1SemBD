Algoritmo "EscalaMedicos_3°sprint"


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

Const

   max_med = 140

Var



   //Variáveis referente ao cadastro de escala:
   turno_manha_segunda: vetor[1..max_med] de inteiro
   turno_tarde_segunda: vetor[1..max_med] de inteiro
   turno_noite_segunda: vetor[1..max_med] de inteiro

   turno_manha_terca: vetor[1..max_med] de inteiro
   turno_tarde_terca: vetor[1..max_med] de inteiro
   turno_noite_terca: vetor[1..max_med] de inteiro

   turno_manha_quarta: vetor[1..max_med] de inteiro
   turno_tarde_quarta: vetor[1..max_med] de inteiro
   turno_noite_quarta: vetor[1..max_med] de inteiro

   turno_manha_quinta: vetor[1..max_med] de inteiro
   turno_tarde_quinta: vetor[1..max_med] de inteiro
   turno_noite_quinta: vetor[1..max_med] de inteiro

   turno_manha_sexta: vetor[1..max_med] de inteiro
   turno_tarde_sexta: vetor[1..max_med] de inteiro
   turno_noite_sexta: vetor[1..max_med] de inteiro


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
   opcao2: caractere
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

   //variaveis 3 sprint cad medico semanal

   opcao_cad_semana : inteiro
   qtd_turnos_escalados_segunda : vetor [1..max_med] de inteiro
   qtd_turnos_escalados_terca : vetor [1..max_med] de inteiro
   qtd_turnos_escalados_quarta : vetor [1..max_med] de inteiro
   qtd_turnos_escalados_quinta: vetor [1..max_med] de inteiro
   qtd_turnos_escalados_sexta: vetor [1..max_med] de inteiro

   //novas variaveis para validar escala
   dia_semana_escolha : inteiro
   dia_semana_nome_escolhido:  caractere


   // RELATORIOS SEMANAIS - US22 A US25
   opcao_relatorio_semana: inteiro
   indice_carga: inteiro
   menor_carga: inteiro
   maior_carga: inteiro
   total_escalas_semana: inteiro
   total_medicos_semana: inteiro
   media_escalas_semana: real
   encontrou_sobrecarga: logico
   encontrou_escalado: logico


Inicio

   opcao_menu <- 0
   i <- 1
   id <- 0
   opcao <- 0

   Enquanto (opcao_menu <> 6) Faça

      Escreval("=========================================")
      Escreval()
      Escreval("       MEDSHIFT - MENU PRINCIPAL")
      Escreval()
      Escreval("=========================================")
      Escreval()
      Escreval("        1 - CADASTRAR MÉDICOS")
      Escreval("        2 - CONSULTAR CADASTROS")
      Escreval("        3 - MONTAR ESCALA")
      Escreval("        4 - VALIDAR PLANTÕES")
      Escreval("        5 - RELATÓRIOS SEMANAIS")
      Escreval("        6 - ENCERRAR PROGRAMA")
      Escreval()
      Escreval("=========================================")
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
            Escreval("====================================")
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
               Escreval("===========================================")
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
            Escreval("[S] Sim")
            Escreval("[N] Não")
            Escreval()
            Escreval("==============================")
            Escreval()
            Escreva("Opção: ")
            Leia(opcao2)
            LimpaTela()

            Enquanto (opcao2 <> "n") e (opcao2 <> "N") e (opcao2 <> "s") e (opcao2 <> "S") Faça

               Escreval("=========================================")
               Escreval()
               Escreval(          "ERRO! OPÇÃO INVÁLIDA! ")
               Escreval()
               Escreval("=========================================")
               Escreval()
               Escreval("- Dr.(a): ", med_Nome[i])
               Escreval("- Especialidade: ",med_Espec[i])
               Escreval("- Registro: ", med_Cod[i])
               Escreval()
               Escreval("Tem disponibilidade de MANHÃ: ")
               Escreval("[S] Sim")
               Escreval("[N] Não")
               Escreval()
               Escreval("=========================================")
               Escreval()
               Escreva("Opção: ")
               Leia(opcao2)
               LimpaTela()


            Fimenquanto

            Se (opcao2 = "s") ou (opcao2 = "S") Então

               disp_manha[i] <- "Sim"

            Senão

               disp_manha[i] <- "Não"

            Fimse

            Escreval()
            Escreval("==============================")
            Escreval()
            Escreval("- Dr.(a): ", med_Nome[i])
            Escreval("- Especialidade: ",med_Espec[i])
            Escreval("- Registro: ", med_Cod[i])
            Escreval()
            Escreval("Tem disponibilidade de TARDE: ")
            Escreval("[S] Sim")
            Escreval("[N] Não")
            Escreval()
            Escreval("==============================")
            Escreval()
            Escreva("Opção: ")
            Leia(opcao2)
            LimpaTela()

            Enquanto (opcao2 <> "n") e (opcao2 <> "N") e (opcao2 <> "s") e (opcao2 <> "S") Faça

               Escreval("=========================================")
               Escreval()
               Escreval(          "ERRO! OPÇÃO INVÁLIDA! ")
               Escreval()
               Escreval("=========================================")
               Escreval()
               Escreval("- Dr.(a): ", med_Nome[i])
               Escreval("- Especialidade: ",med_Espec[i])
               Escreval("- Registro: ", med_Cod[i])
               Escreval()
               Escreval("Tem disponibilidade de TARDE: ")
               Escreval("[S] Sim")
               Escreval("[N] Não")
               Escreval()
               Escreval("========================================")
               Escreval()
               Escreva("Opção: ")
               Leia(opcao2)
               LimpaTela()

            Fimenquanto

            Se (opcao2 = "s") ou (opcao2 = "S") Então

               disp_tarde[i] <- "Sim"

            Senao

               disp_tarde[i] <- "Não"

            Fimse

            Escreval()
            Escreval("==============================")
            Escreval()
            Escreval("- Dr.(a): ", med_Nome[i])
            Escreval("- Especialidade: ",med_Espec[i])
            Escreval("- Registro: ", med_Cod[i])
            Escreval()
            Escreval("Tem disponibilidade de NOITE: ")
            Escreval("[S] Sim")
            Escreval("[N] Não")
            Escreval()
            Escreval("==============================")
            Escreval()
            Escreva("Opção: ")
            Leia(opcao2)
            LimpaTela()

            Enquanto (opcao2 <> "n") e (opcao2 <> "N") e (opcao2 <> "s") e (opcao2 <> "S") Faça

               Escreval("=========================================")
               Escreval()
               Escreval(          "ERRO! OPÇÃO INVÁLIDA! ")
               Escreval()
               Escreval("=========================================")
               Escreval()
               Escreval("- Dr.(a): ", med_Nome[i])
               Escreval("- Especialidade: ",med_Espec[i])
               Escreval("- Registro: ", med_Cod[i])
               Escreval()
               Escreval("Tem disponibilidade de NOITE: ")
               Escreval("[S] Sim")
               Escreval("[N] Não")
               Escreval()
               Escreval("=========================================")
               Escreval()
               Escreva("Opção: ")
               Leia(opcao2)
               LimpaTela()

            Fimenquanto

            Se (opcao2 = "s") ou (opcao2 = "S") Então

               disp_noite[i] <- "Sim"

            Senão

               disp_noite[i] <- "Não"

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
            Escreval()
            Escreval("                 CONSULTA DE MÉDICO               ")
            Escreval()
            Escreval("==================================================")
            Escreval()
            Escreval(" Total de médicos cadastrados no sistema: ", total_cadastrados)
            Escreval()
            Escreval("==================================================")
            Escreval()
            Escreval(" Digite abaixo o REGISTRO que deseja consultar:")
            Escreval()
            Escreva(" >>> REGISTRO: ")
            Leia(consulta_codigo)
            LimpaTela()

            // CONSULTA DE CADASTRO MÉDICO.

            se   (consulta_codigo <= 0) ou (consulta_codigo > max_med)  entao

               Escreval("===========================================================")
               Escreval()
               Escreval("        ERRO! VALOR INVÁLIDO! DIGITE APENAS NÚMEROS        ")
               Escreval("                        ENTRE 1 A ", max_med)
               Escreval()
               Escreval("===========================================================")


            senao

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
                  Escreval("                              MÉDICO NÃO CADASTRADO")
                  Escreval("============================================================================================")
                  Escreval("O REGISTRO: ", consulta_codigo, " não está cadastrado.")
                  Escreval("============================================================================================")

               Senão

                  Escreval("============================================================================================")
                  Escreval("                                    RELATÓRIO DE MÉDICOS")
                  EscrevaL("============================================================================================")
                  Escreval("REGISTRO  NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
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

            fimse

            Escreval()
            Escreval("APERTE [ENTER] PARA CONTINUAR")
            Escreval()
            Leia(continuar)
            LimpaTela()

         Senão




            //MONTAGEM ESCALA




            Se (opcao_menu = 3) Então


               opcao_esc <- -1
               opcao_cad_semana <- -1

               Enquanto (opcao_cad_semana <> 0) Faça

                  Escreval("========================================")
                  Escreval()
                  Escreval("             MONTAR ESCALA")
                  Escreval("             MENU - DIA DA SEMANA")
                  Escreval()
                  Escreval("========================================")
                  Escreval()
                  Escreval("          1 - SEGUNDA-FEIRA")
                  Escreval("          2 - TERÇA-FEIRA")
                  Escreval("          3 - QUARTA-FEIRA")
                  Escreval("          4 - QUINTA-FEIRA")
                  Escreval("          5 - SEXTA-FEIRA")
                  Escreval("          0 - SAIR")
                  Escreval()
                  Escreval("========================================")
                  Escreval()
                  Escreval("ESCOLHA UM NÚMERO REFERENTE AO DIA DA SEMANA")
                  Escreval("           OU DIGITE '0' PARA SAIR          ")
                  Escreva("OPÇÃO: ")
                  Leia(opcao_cad_semana)
                  LimpaTela()


                  Escolha(opcao_cad_semana)

                     //caso o dia selecionado seja segunda-feira

                  Caso (0)

                     Escreval("================================")
                     Escreval()
                     Escreval("   VOCÊ DECIDIU SAIR DA CONSTRUÇÃO DE ESCALA SEMANAL   ")
                     Escreval()
                     Escreval("================================")


                  Caso (1)
                     opcao_esc <- -1


                     Enquanto (opcao_esc <> 0) Faça

                        Escreval("========================================")
                        Escreval()
                        Escreval("             MONTAR ESCALA")
                        Escreval("             MENU - TURNO")
                        Escreval()
                        Escreval("========================================")
                        Escreval()
                        Escreval("          1 - TURNO DA MANHÃ")
                        Escreval("          2 - TURNO DA TARDE")
                        Escreval("          3 - TURNO DA NOITE")
                        Escreval("          0 - SAIR")
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
                              buttonT <- "s"

                              //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA MANHÃ


                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (med_Cod[registro_med] = 0) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Clínico geral") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_segunda[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                Senão

                                                   Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                      Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                         Escreval("========================================================")
                                                         Escreval()
                                                         Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                         Escreval()
                                                         Escreval("========================================================")

                                                      Senão

                                                         Escreval("========================================================")
                                                         Escreval()
                                                         Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                         Escreval()
                                                         Escreval("========================================================")

                                                      Fimse

                                                   Senão

                                                      Escreval("===================================")
                                                      Escreval()
                                                      Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                      Escreval()
                                                      Escreval("===================================")

                                                      turno_manha_segunda[registro_med] <- 1
                                                      qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS PEDIATRAS DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Pediatra") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_segunda[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                Senão

                                                   Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                      Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                         Escreval("========================================================")
                                                         Escreval()
                                                         Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                         Escreval()
                                                         Escreval("========================================================")

                                                      Senão

                                                         Escreval("========================================================")
                                                         Escreval()
                                                         Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                         Escreval()
                                                         Escreval("========================================================")

                                                      Fimse

                                                   Senão

                                                      Escreval("===================================")
                                                      Escreval()
                                                      Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                      Escreval()
                                                      Escreval("===================================")

                                                      turno_manha_segunda[registro_med] <- 1
                                                      qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto


                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS CIRURGIÕES DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Cirurgião") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_segunda[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                Senão

                                                   Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                      Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                         Escreval("========================================================")
                                                         Escreval()
                                                         Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                         Escreval()
                                                         Escreval("========================================================")

                                                      Senão

                                                         Escreval("========================================================")
                                                         Escreval()
                                                         Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                         Escreval()
                                                         Escreval("========================================================")

                                                      Fimse

                                                   Senão

                                                      Escreval("===================================")
                                                      Escreval()
                                                      Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                      Escreval()
                                                      Escreval("===================================")

                                                      turno_manha_segunda[registro_med] <- 1
                                                      qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              button <- " "

                              Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                 Escreval("========================================")
                                 Escreval()
                                 Escreval("Confirma o Cadastro do Turno da Manhã?")
                                 Escreval()
                                 Escreval("========================================")
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

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Se (button = "s") ou (button = "S") Então

                                       Escreval("====================================================")
                                       Escreval()
                                       Escreval(" CADASTRO DO TURNO DA MANHÃ CONFIRMADO COM SUCESSO! ")
                                       Escreval()
                                       Escreval("====================================================")

                                    Senão

                                       Se (button = "n") ou (button = "N") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("     CADASTRO DO TURNO DA MANHÃ NÃO CONFIRMADO!     ")
                                          Escreval()
                                          Escreval("====================================================")

                                          //se o turno nao for confirmado temos que desalocar

                                          Para descadastro de 1 até max_med Faça

                                             Se (turno_manha_segunda[registro_med] = 1) Então

                                                turno_manha_segunda[registro_med] <- 0
                                                qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] - 1)
                                                qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                 buttonT <- "s"

                                 //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA TARDE


                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (med_Cod[registro_med] = 0) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_segunda[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_segunda[registro_med] <- 1
                                                         qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS PEDIATRAS DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Pediatra") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com especidalidade errada!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_segunda[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_segunda[registro_med] <- 1
                                                         qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto


                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS CIRURGIÕES DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_segunda[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão


                                                      Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_segunda[registro_med] <- 1
                                                         qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 button <- " "

                                 Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                    Escreval("========================================")
                                    Escreval()
                                    Escreval("Confirma o Cadastro do Turno da TARDE?")
                                    Escreval()
                                    Escreval("========================================")
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

                                       Escreval("=========================")
                                       Escreval()
                                       Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                       Escreval()
                                       Escreval("=========================")

                                    Senão

                                       Se (button = "s") ou (button = "S") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval(" CADASTRO DO TURNO DA TARDE CONFIRMADO COM SUCESSO! ")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          Se (button = "n") ou (button = "N") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval("     CADASTRO DO TURNO DA TARDE NÃO CONFIRMADO!     ")
                                             Escreval()
                                             Escreval("====================================================")

                                             //se o turno nao for confirmado temos que desalocar

                                             Para descadastro de 1 até max_med Faça

                                                Se (turno_tarde_segunda[registro_med] = 1) Então

                                                   turno_tarde_segunda[registro_med] <- 0
                                                   qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] - 1)
                                                   qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                    buttonT <- "s"

                                    //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA NOITE


                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_segunda[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha terca de manha
                                                         //nao pode ser escalado segunda a noite

                                                         Se (turno_manha_terca[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA TERÇA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_segunda[registro_med] <- 1
                                                               qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS PEDIATRAS DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - PEDIATRA                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRA

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

                                                Se (med_Espec[indice_relatorio] = "Pediatra") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Pediatra") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_segunda[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha terca de manha
                                                         //nao pode ser escalado segunda a noite

                                                         Se (turno_manha_terca[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA TERÇA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_segunda[registro_med] <- 1
                                                               qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS CIRURGIÕES DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - CIRURGIÃO                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS CIRURGIÃO

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

                                                Se (med_Espec[indice_relatorio] = "Cirurgião") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_segunda[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha terca de manha
                                                         //nao pode ser escalado segunda a noite

                                                         Se (turno_manha_terca[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA TERÇA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_segunda[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_segunda[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_segunda[registro_med] <- 1
                                                               qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"
                                    button <- " "

                                    Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                       Escreval("========================================")
                                       Escreval()
                                       Escreval("Confirma o Cadastro do Turno da NOITE?")
                                       Escreval()
                                       Escreval("========================================")
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

                                          Escreval("=========================")
                                          Escreval()
                                          Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                          Escreval()
                                          Escreval("=========================")

                                       Senão

                                          Se (button = "s") ou (button = "S") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval(" CADASTRO DO TURNO DA NOITE CONFIRMADO COM SUCESSO! ")
                                             Escreval()
                                             Escreval("====================================================")

                                          Senão

                                             Se (button = "n") ou (button = "N") Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("     CADASTRO DO TURNO DA NOITE NÃO CONFIRMADO!     ")
                                                Escreval()
                                                Escreval("====================================================")

                                                //se o turno nao for confirmado temos que desalocar

                                                Para descadastro de 1 até max_med Faça

                                                   Se (turno_noite_segunda[registro_med] = 1) Então

                                                      turno_noite_segunda[registro_med] <- 0
                                                      qtd_turnos_escalados_segunda[registro_med] <- (qtd_turnos_escalados_segunda[registro_med] - 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

                                                   Fimse

                                                Fimpara

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Senão

                                 Se(opcao_esc = 0) Então

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "VOCÊ DECIDIU SAIR DA MONTAGEM DE ESCALAS DO DIA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Fimse
                              Fimse
                           Fimse
                        Fimse
                     Fimenquanto

                     //caso seja selecionado terça-feira

                  Caso (2)
                     opcao_esc <- -1

                     Enquanto (opcao_esc <> 0) Faça

                        Escreval("========================================")
                        Escreval()
                        Escreval("             MONTAR ESCALA")
                        Escreval("             MENU - TURNO")
                        Escreval()
                        Escreval("========================================")
                        Escreval()
                        Escreval("          1 - TURNO DA MANHÃ")
                        Escreval("          2 - TURNO DA TARDE")
                        Escreval("          3 - TURNO DA NOITE")
                        Escreval("          0 - SAIR")
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
                              buttonT <- "s"

                              //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA MANHÃ


                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (med_Cod[registro_med] = 0) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Clínico geral") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_terca[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //segunda a noite, ele nao pode ser escalado
                                                   //na terca de manha

                                                Senão

                                                   Se (turno_noite_segunda[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA SEGUNDA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_terca[registro_med] <- 1
                                                         qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS PEDIATRAS DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Pediatra") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_terca[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //segunda a noite, ele nao pode ser escalado
                                                   //na terca de manha

                                                Senão

                                                   Se (turno_noite_segunda[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA SEGUNDA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_terca[registro_med] <- 1
                                                         qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto


                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS CIRURGIÕES DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Cirurgião") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_terca[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //segunda a noite, ele nao pode ser escalado
                                                   //na terca de manha

                                                Senão

                                                   Se (turno_noite_segunda[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA SEGUNDA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_terca[registro_med] <- 1
                                                         qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse
                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              button <- " "

                              Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                 Escreval("========================================")
                                 Escreval()
                                 Escreval("Confirma o Cadastro do Turno da Manhã?")
                                 Escreval()
                                 Escreval("========================================")
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

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Se (button = "s") ou (button = "S") Então

                                       Escreval("====================================================")
                                       Escreval()
                                       Escreval(" CADASTRO DO TURNO DA MANHÃ CONFIRMADO COM SUCESSO! ")
                                       Escreval()
                                       Escreval("====================================================")

                                    Senão

                                       Se (button = "n") ou (button = "N") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("     CADASTRO DO TURNO DA MANHÃ NÃO CONFIRMADO!     ")
                                          Escreval()
                                          Escreval("====================================================")

                                          //se o turno nao for confirmado temos que desalocar

                                          Para descadastro de 1 até max_med Faça

                                             Se (turno_manha_terca[registro_med] = 1) Então

                                                turno_manha_terca[registro_med] <- 0
                                                qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] - 1)
                                                qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                 buttonT <- "s"

                                 //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA TARDE


                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (med_Cod[registro_med] = 0) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_terca[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_terca[registro_med] <- 1
                                                         qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS PEDIATRAS DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Pediatra") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com especidalidade errada!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_terca[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_terca[registro_med] <- 1
                                                         qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto


                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS CIRURGIÕES DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_terca[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão


                                                      Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_terca[registro_med] <- 1
                                                         qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 button <- " "

                                 Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                    Escreval("========================================")
                                    Escreval()
                                    Escreval("Confirma o Cadastro do Turno da TARDE?")
                                    Escreval()
                                    Escreval("========================================")
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

                                       Escreval("=========================")
                                       Escreval()
                                       Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                       Escreval()
                                       Escreval("=========================")

                                    Senão

                                       Se (button = "s") ou (button = "S") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval(" CADASTRO DO TURNO DA TARDE CONFIRMADO COM SUCESSO! ")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          Se (button = "n") ou (button = "N") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval("     CADASTRO DO TURNO DA TARDE NÃO CONFIRMADO!     ")
                                             Escreval()
                                             Escreval("====================================================")

                                             //se o turno nao for confirmado temos que desalocar

                                             Para descadastro de 1 até max_med Faça

                                                Se (turno_tarde_terca[registro_med] = 1) Então

                                                   turno_tarde_terca[registro_med] <- 0
                                                   qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] - 1)
                                                   qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                    buttonT <- "s"

                                    //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA NOITE


                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_terca[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha quarta de manha
                                                         //nao pode ser escalado terca a noite

                                                         Se (turno_manha_quarta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA QUARTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_terca[registro_med] <- 1
                                                               qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS PEDIATRAS DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - PEDIATRA                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRA

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

                                                Se (med_Espec[indice_relatorio] = "Pediatra") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Pediatra") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_terca[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha quarta de manha
                                                         //nao pode ser escalado terca a noite

                                                         Se (turno_manha_quarta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA QUARTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_terca[registro_med] <- 1
                                                               qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS CIRURGIÕES DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - CIRURGIÃO                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS CIRURGIÃO

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

                                                Se (med_Espec[indice_relatorio] = "Cirurgião") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_terca[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha quarta de manha
                                                         //nao pode ser escalado terca a noite

                                                         Se (turno_manha_quarta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA QUARTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_terca[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_terca[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_terca[registro_med] <- 1
                                                               qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"
                                    button <- " "

                                    Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                       Escreval("========================================")
                                       Escreval()
                                       Escreval("Confirma o Cadastro do Turno da NOITE?")
                                       Escreval()
                                       Escreval("========================================")
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

                                          Escreval("=========================")
                                          Escreval()
                                          Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                          Escreval()
                                          Escreval("=========================")

                                       Senão

                                          Se (button = "s") ou (button = "S") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval(" CADASTRO DO TURNO DA NOITE CONFIRMADO COM SUCESSO! ")
                                             Escreval()
                                             Escreval("====================================================")

                                          Senão

                                             Se (button = "n") ou (button = "N") Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("     CADASTRO DO TURNO DA NOITE NÃO CONFIRMADO!     ")
                                                Escreval()
                                                Escreval("====================================================")

                                                //se o turno nao for confirmado temos que desalocar

                                                Para descadastro de 1 até max_med Faça

                                                   Se (turno_noite_terca[registro_med] = 1) Então

                                                      turno_noite_terca[registro_med] <- 0
                                                      qtd_turnos_escalados_terca[registro_med] <- (qtd_turnos_escalados_terca[registro_med] - 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

                                                   Fimse

                                                Fimpara

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto


                              Senão

                                 Se(opcao_esc = 0) Então

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "VOCÊ DECIDIU SAIR DA MONTAGEM DE ESCALAS DO DIA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Fimse
                              Fimse
                           Fimse
                        Fimse
                     Fimenquanto

                     //caso seja selecionado quarta-feira

                  Caso (3)
                     opcao_esc <- -1

                     Enquanto (opcao_esc <> 0) Faça

                        Escreval("========================================")
                        Escreval()
                        Escreval("             MONTAR ESCALA")
                        Escreval("             MENU - TURNO")
                        Escreval()
                        Escreval("========================================")
                        Escreval()
                        Escreval("          1 - TURNO DA MANHÃ")
                        Escreval("          2 - TURNO DA TARDE")
                        Escreval("          3 - TURNO DA NOITE")
                        Escreval("          0 - SAIR")
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
                              buttonT <- "s"

                              //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA MANHÃ


                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (med_Cod[registro_med] = 0) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Clínico geral") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_quarta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //terca a noite, ele nao pode ser escalado
                                                   //na quarta de manha

                                                Senão

                                                   Se (turno_noite_terca[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA TERÇA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_quarta[registro_med] <- 1
                                                         qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS PEDIATRAS DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Pediatra") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_quarta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //terca a noite, ele nao pode ser escalado
                                                   //na quarta de manha

                                                Senão

                                                   Se (turno_noite_terca[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA TERÇA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quartaregistro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_quarta[registro_med] <- 1
                                                         qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto


                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS CIRURGIÕES DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Cirurgião") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_quarta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //terca a noite, ele nao pode ser escalado
                                                   //na quarta de manha

                                                Senão

                                                   Se (turno_noite_terca[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA TERÇA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_quarta[registro_med] <- 1
                                                         qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse
                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              button <- " "

                              Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                 Escreval("========================================")
                                 Escreval()
                                 Escreval("Confirma o Cadastro do Turno da Manhã?")
                                 Escreval()
                                 Escreval("========================================")
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

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Se (button = "s") ou (button = "S") Então

                                       Escreval("====================================================")
                                       Escreval()
                                       Escreval(" CADASTRO DO TURNO DA MANHÃ CONFIRMADO COM SUCESSO! ")
                                       Escreval()
                                       Escreval("====================================================")

                                    Senão

                                       Se (button = "n") ou (button = "N") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("     CADASTRO DO TURNO DA MANHÃ NÃO CONFIRMADO!     ")
                                          Escreval()
                                          Escreval("====================================================")

                                          //se o turno nao for confirmado temos que desalocar

                                          Para descadastro de 1 até max_med Faça

                                             Se (turno_manha_quarta[registro_med] = 1) Então

                                                turno_manha_quarta[registro_med] <- 0
                                                qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] - 1)
                                                qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                 buttonT <- "s"

                                 //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA TARDE


                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (med_Cod[registro_med] = 0) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_quarta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_quarta[registro_med] <- 1
                                                         qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS PEDIATRAS DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Pediatra") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com especidalidade errada!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_quarta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_quarta[registro_med] <- 1
                                                         qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto


                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS CIRURGIÕES DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_quarta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão


                                                      Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_quarta[registro_med] <- 1
                                                         qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 button <- " "

                                 Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                    Escreval("========================================")
                                    Escreval()
                                    Escreval("Confirma o Cadastro do Turno da TARDE?")
                                    Escreval()
                                    Escreval("========================================")
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

                                       Escreval("=========================")
                                       Escreval()
                                       Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                       Escreval()
                                       Escreval("=========================")

                                    Senão

                                       Se (button = "s") ou (button = "S") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval(" CADASTRO DO TURNO DA TARDE CONFIRMADO COM SUCESSO! ")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          Se (button = "n") ou (button = "N") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval("     CADASTRO DO TURNO DA TARDE NÃO CONFIRMADO!     ")
                                             Escreval()
                                             Escreval("====================================================")

                                             //se o turno nao for confirmado temos que desalocar

                                             Para descadastro de 1 até max_med Faça

                                                Se (turno_tarde_quarta[registro_med] = 1) Então

                                                   turno_tarde_quarta[registro_med] <- 0
                                                   qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] - 1)
                                                   qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                    buttonT <- "s"

                                    //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA NOITE


                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_quarta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha quinta de manha
                                                         //nao pode ser escalado quarta a noite

                                                         Se (turno_manha_quinta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA QUINTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_quarta[registro_med] <- 1
                                                               qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS PEDIATRAS DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - PEDIATRA                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRA

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

                                                Se (med_Espec[indice_relatorio] = "Pediatra") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Pediatra") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_quarta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha quinta de manha
                                                         //nao pode ser escalado quarta a noite

                                                         Se (turno_manha_quinta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA QUINTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_quarta[registro_med] <- 1
                                                               qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS CIRURGIÕES DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - CIRURGIÃO                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS CIRURGIÃO

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

                                                Se (med_Espec[indice_relatorio] = "Cirurgião") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_quarta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha quinta de manha
                                                         //nao pode ser escalado quarta a noite

                                                         Se (turno_manha_quinta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA QUINTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_quarta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_quarta[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_quarta[registro_med] <- 1
                                                               qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"
                                    button <- " "

                                    Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                       Escreval("========================================")
                                       Escreval()
                                       Escreval("Confirma o Cadastro do Turno da NOITE?")
                                       Escreval()
                                       Escreval("========================================")
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

                                          Escreval("=========================")
                                          Escreval()
                                          Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                          Escreval()
                                          Escreval("=========================")

                                       Senão

                                          Se (button = "s") ou (button = "S") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval(" CADASTRO DO TURNO DA NOITE CONFIRMADO COM SUCESSO! ")
                                             Escreval()
                                             Escreval("====================================================")

                                          Senão

                                             Se (button = "n") ou (button = "N") Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("     CADASTRO DO TURNO DA NOITE NÃO CONFIRMADO!     ")
                                                Escreval()
                                                Escreval("====================================================")

                                                //se o turno nao for confirmado temos que desalocar

                                                Para descadastro de 1 até max_med Faça

                                                   Se (turno_noite_quarta[registro_med] = 1) Então

                                                      turno_noite_quarta[registro_med] <- 0
                                                      qtd_turnos_escalados_quarta[registro_med] <- (qtd_turnos_escalados_quarta[registro_med] - 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

                                                   Fimse

                                                Fimpara

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto


                              Senão

                                 Se(opcao_esc = 0) Então

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "VOCÊ DECIDIU SAIR DA MONTAGEM DE ESCALAS DO DIA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Fimse

                              Fimse
                           Fimse
                        Fimse
                     Fimenquanto

                     //caso selecionado quinta-feira

                  Caso (4)
                     opcao_esc <- -1

                     Enquanto (opcao_esc <> 0) Faça

                        Escreval("========================================")
                        Escreval()
                        Escreval("             MONTAR ESCALA")
                        Escreval("             MENU - TURNO")
                        Escreval()
                        Escreval("========================================")
                        Escreval()
                        Escreval("          1 - TURNO DA MANHÃ")
                        Escreval("          2 - TURNO DA TARDE")
                        Escreval("          3 - TURNO DA NOITE")
                        Escreval("          0 - SAIR")
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
                              buttonT <- "s"

                              //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA MANHÃ


                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (med_Cod[registro_med] = 0) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Clínico geral") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_quinta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //quarta a noite, ele nao pode ser escalado
                                                   //na quinta de manha

                                                Senão

                                                   Se (turno_noite_quarta[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA QUARTA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_quinta[registro_med] <- 1
                                                         qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS PEDIATRAS DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Pediatra") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_quinta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //quarta a noite, ele nao pode ser escalado
                                                   //na quinta de manha

                                                Senão

                                                   Se (turno_noite_quarta[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA QUARTA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_quinta[registro_med] <- 1
                                                         qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto


                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS CIRURGIÕES DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Cirurgião") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_quinta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //quarta a noite, ele nao pode ser escalado
                                                   //na quinta de manha

                                                Senão

                                                   Se (turno_noite_quarta[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA QUARTA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_quinta[registro_med] <- 1
                                                         qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse
                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              button <- " "

                              Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                 Escreval("========================================")
                                 Escreval()
                                 Escreval("Confirma o Cadastro do Turno da Manhã?")
                                 Escreval()
                                 Escreval("========================================")
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

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Se (button = "s") ou (button = "S") Então

                                       Escreval("====================================================")
                                       Escreval()
                                       Escreval(" CADASTRO DO TURNO DA MANHÃ CONFIRMADO COM SUCESSO! ")
                                       Escreval()
                                       Escreval("====================================================")

                                    Senão

                                       Se (button = "n") ou (button = "N") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("     CADASTRO DO TURNO DA MANHÃ NÃO CONFIRMADO!     ")
                                          Escreval()
                                          Escreval("====================================================")

                                          //se o turno nao for confirmado temos que desalocar

                                          Para descadastro de 1 até max_med Faça

                                             Se (turno_manha_quinta[registro_med] = 1) Então

                                                turno_manha_quinta[registro_med] <- 0
                                                qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] - 1)
                                                qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                 buttonT <- "s"

                                 //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA TARDE


                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (med_Cod[registro_med] = 0) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_quinta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_quinta[registro_med] <- 1
                                                         qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS PEDIATRAS DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Pediatra") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com especidalidade errada!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_quinta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_quinta[registro_med] <- 1
                                                         qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto


                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS CIRURGIÕES DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_quinta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão


                                                      Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_quinta[registro_med] <- 1
                                                         qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 button <- " "

                                 Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                    Escreval("========================================")
                                    Escreval()
                                    Escreval("Confirma o Cadastro do Turno da TARDE?")
                                    Escreval()
                                    Escreval("========================================")
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

                                       Escreval("=========================")
                                       Escreval()
                                       Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                       Escreval()
                                       Escreval("=========================")

                                    Senão

                                       Se (button = "s") ou (button = "S") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval(" CADASTRO DO TURNO DA TARDE CONFIRMADO COM SUCESSO! ")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          Se (button = "n") ou (button = "N") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval("     CADASTRO DO TURNO DA TARDE NÃO CONFIRMADO!     ")
                                             Escreval()
                                             Escreval("====================================================")

                                             //se o turno nao for confirmado temos que desalocar

                                             Para descadastro de 1 até max_med Faça

                                                Se (turno_tarde_quinta[registro_med] = 1) Então

                                                   turno_tarde_quinta[registro_med] <- 0
                                                   qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] - 1)
                                                   qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                    buttonT <- "s"

                                    //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA NOITE


                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_quinta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha sexta de manha
                                                         //nao pode ser escalado quinta a noite

                                                         Se (turno_manha_sexta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA SEXTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_quinta[registro_med] <- 1
                                                               qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS PEDIATRAS DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - PEDIATRA                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRA

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

                                                Se (med_Espec[indice_relatorio] = "Pediatra") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Pediatra") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_quinta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha sexta de manha
                                                         //nao pode ser escalado quinta a noite

                                                         Se (turno_manha_sexta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA SEXTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_quinta[registro_med] <- 1
                                                               qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS CIRURGIÕES DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - CIRURGIÃO                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS CIRURGIÃO

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

                                                Se (med_Espec[indice_relatorio] = "Cirurgião") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_quinta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         //nova regra: se o medico trabalha sexta de manha
                                                         //nao pode ser escalado quinta a noite

                                                         Se (turno_manha_sexta[registro_med] = 1) Então

                                                            Escreval("=================================")
                                                            Escreval()
                                                            Escreval(   "ERRO! Médico TRABALHA SEXTA-FEIRA NO TURNO DA MANHÃ!")
                                                            Escreval()
                                                            Escreval("=================================")

                                                         Senão

                                                            Se ((qtd_turnos_escalados_quinta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                               Se (qtd_turnos_escalados_quinta[registro_med] = 2) Então

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Senão

                                                                  Escreval("========================================================")
                                                                  Escreval()
                                                                  Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                                  Escreval()
                                                                  Escreval("========================================================")

                                                               Fimse

                                                            Senão

                                                               Escreval("===================================")
                                                               Escreval()
                                                               Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                               Escreval()
                                                               Escreval("===================================")

                                                               turno_noite_quinta[registro_med] <- 1
                                                               qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] + 1)
                                                               qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"
                                    button <- " "

                                    Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                       Escreval("========================================")
                                       Escreval()
                                       Escreval("Confirma o Cadastro do Turno da NOITE?")
                                       Escreval()
                                       Escreval("========================================")
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

                                          Escreval("=========================")
                                          Escreval()
                                          Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                          Escreval()
                                          Escreval("=========================")

                                       Senão

                                          Se (button = "s") ou (button = "S") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval(" CADASTRO DO TURNO DA NOITE CONFIRMADO COM SUCESSO! ")
                                             Escreval()
                                             Escreval("====================================================")

                                          Senão

                                             Se (button = "n") ou (button = "N") Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("     CADASTRO DO TURNO DA NOITE NÃO CONFIRMADO!     ")
                                                Escreval()
                                                Escreval("====================================================")

                                                //se o turno nao for confirmado temos que desalocar

                                                Para descadastro de 1 até max_med Faça

                                                   Se (turno_noite_quinta[registro_med] = 1) Então

                                                      turno_noite_quinta[registro_med] <- 0
                                                      qtd_turnos_escalados_quinta[registro_med] <- (qtd_turnos_escalados_quinta[registro_med] - 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

                                                   Fimse

                                                Fimpara

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto


                              Senão

                                 Se(opcao_esc = 0) Então

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "VOCÊ DECIDIU SAIR DA MONTAGEM DE ESCALAS DO DIA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Fimse

                              Fimse
                           Fimse
                        Fimse
                     Fimenquanto

                     //caso seja selecionado sexta-feira

                  Caso (5)
                     opcao_esc <- -1

                     Enquanto (opcao_esc <> 0) Faça

                        Escreval("========================================")
                        Escreval()
                        Escreval("             MONTAR ESCALA")
                        Escreval("             MENU - TURNO")
                        Escreval()
                        Escreval("========================================")
                        Escreval()
                        Escreval("          1 - TURNO DA MANHÃ")
                        Escreval("          2 - TURNO DA TARDE")
                        Escreval("          3 - TURNO DA NOITE")
                        Escreval("          0 - SAIR")
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
                              buttonT <- "s"

                              //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA MANHÃ


                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (med_Cod[registro_med] = 0) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Clínico geral") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_sexta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //quinta a noite, ele nao pode ser escalado
                                                   //na sexta de manha

                                                Senão

                                                   Se (turno_noite_quinta[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA QUINTA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_sexta[registro_med] <- 1
                                                         qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS PEDIATRAS DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Pediatra") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com especidalidade errada!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_sexta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //quinta a noite, ele nao pode ser escalado
                                                   //na sexta de manha

                                                Senão

                                                   Se (turno_noite_quinta[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA QUINTA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_sexta[registro_med] <- 1
                                                         qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto


                              registro_med <- 0
                              buttonT <- "s"

                              //REGISTRAR OS CIRURGIÕES DO TURNO DA MANHÃ

                              Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                       Escreval("==============================================")
                                       Escreval()
                                       Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                       Escreval()
                                       Escreval("==============================================")

                                    Senão

                                       Se (registro_med <> med_Cod[registro_med]) Então

                                          Escreval("================================")
                                          Escreval()
                                          Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                          Escreval()
                                          Escreval("================================")

                                       Senão

                                          Se (med_Espec[registro_med] <> "Cirurgião") Então

                                             Escreval("===========================================")
                                             Escreval()
                                             Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                             Escreval()
                                             Escreval("===========================================")

                                          Senão

                                             Se (disp_manha[registro_med] <> "Sim") Então

                                                Escreval("=====================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                Escreval()
                                                Escreval("=====================================")

                                             Senão

                                                Se (turno_manha_sexta[registro_med] <> 0) Então

                                                   Escreval("=================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                   Escreval()
                                                   Escreval("=================================")

                                                   //regra nova da sprint: se o medico trabalhou
                                                   //quinta  a noite, ele nao pode ser escalado
                                                   //na sexta de manha

                                                Senão

                                                   Se (turno_noite_quinta[registro_med] = 1) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico TRABALHA QUINTA-FEIRA NO TURNO DA NOITE!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_manha_sexta[registro_med] <- 1
                                                         qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse
                                    buttonT <- ""

                                    Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                       Escreval()
                                       Escreval("===================================================")
                                       Escreval()
                                       Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                       Escreval()
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

                                       Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                          Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto

                              Fimenquanto

                              button <- " "

                              Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                 Escreval("========================================")
                                 Escreval()
                                 Escreval("Confirma o Cadastro do Turno da Manhã?")
                                 Escreval()
                                 Escreval("========================================")
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

                                    Escreval("=========================")
                                    Escreval()
                                    Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                    Escreval()
                                    Escreval("=========================")

                                 Senão

                                    Se (button = "s") ou (button = "S") Então

                                       Escreval("====================================================")
                                       Escreval()
                                       Escreval(" CADASTRO DO TURNO DA MANHÃ CONFIRMADO COM SUCESSO! ")
                                       Escreval()
                                       Escreval("====================================================")

                                    Senão

                                       Se (button = "n") ou (button = "N") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval("     CADASTRO DO TURNO DA MANHÃ NÃO CONFIRMADO!     ")
                                          Escreval()
                                          Escreval("====================================================")

                                          //se o turno nao for confirmado temos que desalocar

                                          Para descadastro de 1 até max_med Faça

                                             Se (turno_manha_sexta[registro_med] = 1) Então

                                                turno_manha_sexta[registro_med] <- 0
                                                qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] - 1)
                                                qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                 buttonT <- "s"

                                 //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA TARDE


                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (med_Cod[registro_med] = 0) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_sexta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_sexta[registro_med] <- 1
                                                         qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS PEDIATRAS DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Pediatra") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com especidalidade errada!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico Sem Disponibilidade!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_sexta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão

                                                      Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_sexta[registro_med] <- 1
                                                         qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto


                                 registro_med <- 0
                                 buttonT <- "s"

                                 //REGISTRAR OS CIRURGIÕES DO TURNO DA TARDE

                                 Enquanto ((registro_med < 1) OU (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                          Escreval("==============================================")
                                          Escreval()
                                          Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                          Escreval()
                                          Escreval("==============================================")

                                       Senão

                                          Se (registro_med <> med_Cod[registro_med]) Então

                                             Escreval("================================")
                                             Escreval()
                                             Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                             Escreval()
                                             Escreval("================================")

                                          Senão

                                             Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                Escreval("===========================================")
                                                Escreval()
                                                Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                Escreval()
                                                Escreval("===========================================")

                                             Senão

                                                Se (disp_tarde[registro_med] <> "Sim") Então

                                                   Escreval("=====================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                   Escreval()
                                                   Escreval("=====================================")

                                                Senão

                                                   Se (turno_tarde_sexta[registro_med] <> 0) Então

                                                      Escreval("=================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico JÁ CADASTRADO!")
                                                      Escreval()
                                                      Escreval("=================================")

                                                   Senão


                                                      Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                         Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Senão

                                                            Escreval("========================================================")
                                                            Escreval()
                                                            Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                            Escreval()
                                                            Escreval("========================================================")

                                                         Fimse

                                                      Senão

                                                         Escreval("===================================")
                                                         Escreval()
                                                         Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                         Escreval()
                                                         Escreval("===================================")

                                                         turno_tarde_sexta[registro_med] <- 1
                                                         qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                         qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                       buttonT <- ""

                                       Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                          Escreval()
                                          Escreval("===================================================")
                                          Escreval()
                                          Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                          Escreval()
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

                                          Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                             Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                          Fimse

                                       Fimenquanto

                                    Fimenquanto

                                 Fimenquanto

                                 button <- " "

                                 Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                    Escreval("========================================")
                                    Escreval()
                                    Escreval("Confirma o Cadastro do Turno da TARDE?")
                                    Escreval()
                                    Escreval("========================================")
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

                                       Escreval("=========================")
                                       Escreval()
                                       Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                       Escreval()
                                       Escreval("=========================")

                                    Senão

                                       Se (button = "s") ou (button = "S") Então

                                          Escreval("====================================================")
                                          Escreval()
                                          Escreval(" CADASTRO DO TURNO DA TARDE CONFIRMADO COM SUCESSO! ")
                                          Escreval()
                                          Escreval("====================================================")

                                       Senão

                                          Se (button = "n") ou (button = "N") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval("     CADASTRO DO TURNO DA TARDE NÃO CONFIRMADO!     ")
                                             Escreval()
                                             Escreval("====================================================")

                                             //se o turno nao for confirmado temos que desalocar

                                             Para descadastro de 1 até max_med Faça

                                                Se (turno_tarde_sexta[registro_med] = 1) Então

                                                   turno_tarde_sexta[registro_med] <- 0
                                                   qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] - 1)
                                                   qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

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
                                    buttonT <- "s"

                                    //REGISTRAR OS CLÍNICOS GERAIS DO TURNO DA NOITE


                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Clínico geral") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_sexta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                            Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                               Escreval("========================================================")
                                                               Escreval()
                                                               Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                               Escreval()
                                                               Escreval("========================================================")

                                                            Senão

                                                               Escreval("========================================================")
                                                               Escreval()
                                                               Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                               Escreval()
                                                               Escreval("========================================================")

                                                            Fimse

                                                         Senão

                                                            Escreval("===================================")
                                                            Escreval()
                                                            Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                            Escreval()
                                                            Escreval("===================================")

                                                            turno_noite_sexta[registro_med] <- 1
                                                            qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                            qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1



                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CLÍNICO GERAL?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS PEDIATRAS DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - PEDIATRA                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRA

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

                                                Se (med_Espec[indice_relatorio] = "Pediatra") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Pediatra") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_sexta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                            Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                               Escreval("========================================================")
                                                               Escreval()
                                                               Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                               Escreval()
                                                               Escreval("========================================================")

                                                            Senão

                                                               Escreval("========================================================")
                                                               Escreval()
                                                               Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                               Escreval()
                                                               Escreval("========================================================")

                                                            Fimse

                                                         Senão

                                                            Escreval("===================================")
                                                            Escreval()
                                                            Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                            Escreval()
                                                            Escreval("===================================")

                                                            turno_noite_sexta[registro_med] <- 1
                                                            qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                            qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1


                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro PEDIATRA?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"

                                    //REGISTRAR OS CIRURGIÕES DO TURNO DA NOITE

                                    Enquanto ((registro_med < 1) ou (registro_med > max_med)) e ((buttonT = "s") ou (buttonT = "S")) Faça

                                       Enquanto (buttonT = "s") ou (buttonT = "S") Faça

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                TURNO DA NOITE - CIRURGIÃO                             ")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()

                                          //MOSTAR RELATORIOS DE MEDICOS CIRURGIÃO

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

                                                Se (med_Espec[indice_relatorio] = "Cirurgião") entao

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

                                             Escreval("==============================================")
                                             Escreval()
                                             Escreval(  "ERRO! Digite um número de REGISTRO VÁLIDO!")
                                             Escreval()
                                             Escreval("==============================================")

                                          Senão

                                             Se (med_Cod[registro_med] = 0) Então

                                                Escreval("================================")
                                                Escreval()
                                                Escreval("   ERRO! Médico SEM REGISTRO!   ")
                                                Escreval()
                                                Escreval("================================")

                                             Senão

                                                Se (med_Espec[registro_med] <> "Cirurgião") Então

                                                   Escreval("===========================================")
                                                   Escreval()
                                                   Escreval(  "ERRO! Médico com ESPECIALIDADE ERRADA!")
                                                   Escreval()
                                                   Escreval("===========================================")

                                                Senão

                                                   Se (disp_noite[registro_med] <> "Sim") Então

                                                      Escreval("=====================================")
                                                      Escreval()
                                                      Escreval(  "ERRO! Médico SEM DISPONIBILIDADE!")
                                                      Escreval()
                                                      Escreval("=====================================")

                                                   Senão

                                                      Se (turno_noite_sexta[registro_med] <> 0) Então

                                                         Escreval("=================================")
                                                         Escreval()
                                                         Escreval(   "ERRO! Médico JÁ CADASTRADO!")
                                                         Escreval()
                                                         Escreval("=================================")

                                                      Senão

                                                         Se ((qtd_turnos_escalados_sexta[registro_med] = 2) ou (qtd_turnos_escalados[registro_med] = 6)) Então

                                                            Se (qtd_turnos_escalados_sexta[registro_med] = 2) Então

                                                               Escreval("========================================================")
                                                               Escreval()
                                                               Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 2 TURNOS POR DIA!")
                                                               Escreval()
                                                               Escreval("========================================================")

                                                            Senão

                                                               Escreval("========================================================")
                                                               Escreval()
                                                               Escreval(  "ERRO! Médico NÃO PODE TRABALHAR EM MAIS DE 6 TURNOS NA SEMANA!")
                                                               Escreval()
                                                               Escreval("========================================================")

                                                            Fimse

                                                         Senão

                                                            Escreval("===================================")
                                                            Escreval()
                                                            Escreval(  "MÉDICO CADASTRADO COM SUCESSO!")
                                                            Escreval()
                                                            Escreval("===================================")

                                                            turno_noite_sexta[registro_med] <- 1
                                                            qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] + 1)
                                                            qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] + 1



                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                          buttonT <- ""

                                          Enquanto (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Faça

                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval()
                                             Escreval("      Deseja cadastrar outro CIRURGIÃO?  ")
                                             Escreval()
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

                                             Se (buttonT <> "n") E (buttonT <> "N") E (buttonT <> "s") E (buttonT <> "S") Então

                                                Escreval("ERRO! DIGITE UMA OPÇÃO VÁLIDA!")

                                             Fimse

                                          Fimenquanto

                                       Fimenquanto

                                    Fimenquanto

                                    registro_med <- 0
                                    buttonT <- "s"
                                    button <- " "

                                    Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça

                                       Escreval("========================================")
                                       Escreval()
                                       Escreval("Confirma o Cadastro do Turno da NOITE?")
                                       Escreval()
                                       Escreval("========================================")
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

                                          Escreval("=========================")
                                          Escreval()
                                          Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                          Escreval()
                                          Escreval("=========================")

                                       Senão

                                          Se (button = "s") ou (button = "S") Então

                                             Escreval("====================================================")
                                             Escreval()
                                             Escreval(" CADASTRO DO TURNO DA NOITE CONFIRMADO COM SUCESSO! ")
                                             Escreval()
                                             Escreval("====================================================")

                                          Senão

                                             Se (button = "n") ou (button = "N") Então

                                                Escreval("====================================================")
                                                Escreval()
                                                Escreval("     CADASTRO DO TURNO DA NOITE NÃO CONFIRMADO!     ")
                                                Escreval()
                                                Escreval("====================================================")

                                                //se o turno nao for confirmado temos que desalocar

                                                Para descadastro de 1 até max_med Faça

                                                   Se (turno_noite_sexta[registro_med] = 1) Então

                                                      turno_noite_sexta[registro_med] <- 0
                                                      qtd_turnos_escalados_sexta[registro_med] <- (qtd_turnos_escalados_sexta[registro_med] - 1)
                                                      qtd_turnos_escalados[registro_med] <- qtd_turnos_escalados[registro_med] - 1

                                                   Fimse

                                                Fimpara

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimenquanto

                                 Fimenquanto




                              Senão

                                 Escreval("=========================")
                                 Escreval()
                                 Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                                 Escreval()
                                 Escreval("=========================")


                              Fimse
                           Fimse
                        Fimse
                     Fimenquanto

                     //caso usuario selecione opcao errada

                  Outrocaso

                     Escreval("=========================")
                     Escreval()
                     Escreval(  "ERRO! OPÇÃO INVÁLIDA!")
                     Escreval()
                     Escreval("=========================")

                  Fimescolha

               Fimenquanto




            Senão

               LimpaTela()

               opcao_esc <- -1

               //VALIDADOR DE PLANTAO

               Se (opcao_menu = 4) ou (opcao_menu = 5) Então

                  Se (opcao_menu = 5) Entao

                     // RELATORIOS SEMANAIS - US22 A US25
                     opcao_relatorio_semana <- -1

                     Enquanto (opcao_relatorio_semana <> 0) Faca
                        Escreval("========================================")
                        Escreval("          RELATORIOS DA SEMANA")
                        Escreval("========================================")
                        Escreval("1 - MAIOR E MENOR CARGA DE ESCALAS")
                        Escreval("2 - MÉDIA DE ESCALAS")
                        Escreval("3 - QUANTIDADE DE ESCALAS POR MÉDICO")
                        Escreval("4 - MÉDICOS COM SOBRECARGA")
                        Escreval("0 - VOLTAR AO MENU ANTERIOR")
                        Escreval("========================================")
                        Escreva("Escolha uma opcao: ")
                        Leia(opcao_relatorio_semana)
                        LimpaTela()

                        // CALCULOS COMPARTILHADOS
                        total_medicos_semana <- 0
                        total_escalas_semana <- 0
                        menor_carga <- 0
                        maior_carga <- 0

                        Para indice_carga de 1 ate max_med Faca
                           Se (med_Cod[indice_carga] <> 0) Entao
                              total_medicos_semana <- total_medicos_semana + 1
                              total_escalas_semana <- total_escalas_semana + qtd_turnos_escalados[indice_carga]

                              Se (qtd_turnos_escalados[indice_carga] > maior_carga) Entao
                                 maior_carga <- qtd_turnos_escalados[indice_carga]
                              Fimse

                              Se (total_medicos_semana = 1) Entao
                                 menor_carga <- qtd_turnos_escalados[indice_carga]
                              Senao
                                 Se (qtd_turnos_escalados[indice_carga] < menor_carga) Entao
                                    menor_carga <- qtd_turnos_escalados[indice_carga]
                                 Fimse
                              Fimse
                           Fimse
                        Fimpara

                        Escolha (opcao_relatorio_semana)
                        Caso 1
                           // US22 - MAIOR E MENOR CARGA
                           Escreval("========================================")
                           Escreval("     MAIOR E MENOR CARGA SEMANAL")
                           Escreval("========================================")
                           Se (total_medicos_semana = 0) Entao
                              Escreval("Nao existem medicos cadastrados.")
                           Senao
                              Escreval("Menor carga: ", menor_carga)
                              Escreval("Maior carga: ", maior_carga)
                              Escreval()
                              Escreval("Medicos com maior carga:")
                              
                              escreva("REG":4)
                              escreva("NOME":25)
                              escreval("ESCALAS")
                              
                              Para indice_carga de 1 ate max_med Faca
                                 Se (med_Cod[indice_carga] <> 0) e (qtd_turnos_escalados[indice_carga] = maior_carga) Entao
                                    Escreva(med_Cod[indice_carga]:3," ")
                                    Escreva(med_Nome[indice_carga]:25)
                                    Escreval(qtd_turnos_escalados[indice_carga])
                                 Fimse
                              Fimpara
                              Escreval("========================================")
                           Fimse

                        Caso 2
                           // US23 - MEDIA DE ESCALAS
                           Escreval("========================================")
                           Escreval("         MEDIA DE ESCALAS")
                           Escreval("========================================")
                           Se (total_medicos_semana = 0) Entao
                              Escreval("Nao e possivel calcular a media.")
                              Escreval("Nao existem medicos cadastrados.")
                           Senao
                              media_escalas_semana <- total_escalas_semana / total_medicos_semana
                              Escreval("Total de medicos: ", total_medicos_semana)
                              Escreval("Total de escalas: ", total_escalas_semana)
                              Escreval("Media semanal: ", media_escalas_semana:6:2)
                           Fimse

                        Caso 3
                           // US24 - QUANTIDADE DE ESCALAS
                           Escreval("==================================================================")
                           Escreval("                      ESCALAS POR PROFISSIONAL")
                           Escreval("==================================================================")
                           encontrou_escalado <- falso

                           escreva("REG":4)
                           escreva("NOME":25)
                           escreva("Especialidade":20)
                           escreval("Total Escala")

                           Para indice_carga de 1 ate max_med Faca
                              Se (med_Cod[indice_carga] <> 0) e (qtd_turnos_escalados[indice_carga] > 0) Entao
                                 encontrou_escalado <- verdadeiro
                                 Escreva(med_Cod[indice_carga]:3," ")
                                 Escreva(med_Nome[indice_carga]:25)
                                 Escreva(med_Espec[indice_carga]:20)
                                 Escreval(qtd_turnos_escalados[indice_carga])
                              Fimse
                           Fimpara
                           Escreval("==================================================================")

                           Se (encontrou_escalado = falso) Entao
                              Escreval("Nenhum medico escalado na semana.")
                           Fimse

                        Caso 4
                           // US25 - SOBRECARGA SEMANAL
                           Escreval("==================================================================")
                           Escreval("                      SOBRECARGA DE ESCALAS")
                           Escreval("==================================================================")
                           Se (total_medicos_semana = 0) Entao
                              Escreval("Nao existem medicos cadastrados.")
                           Senao
                              media_escalas_semana <- total_escalas_semana / total_medicos_semana
                              encontrou_sobrecarga <- falso
                              Escreval("Media semanal: ", media_escalas_semana:6:2)
                              Escreval("Limite de sobrecarga: ", (media_escalas_semana + 1):6:2)
                              Escreval()

                              escreva("REG":4)
                              escreva("NOME":25)
                              escreva("Especialidade":20)
                              escreval("Escalas")

                              Para indice_carga de 1 ate max_med Faca
                                 Se (med_Cod[indice_carga] <> 0) e (qtd_turnos_escalados[indice_carga] > (media_escalas_semana + 1)) Entao
                                    encontrou_sobrecarga <- verdadeiro
                                    Escreva(med_Cod[indice_carga]:3," ")
                                    Escreva(med_Nome[indice_carga]:25)
                                    Escreva(med_Espec[indice_carga]:20)
                                    Escreval(qtd_turnos_escalados[indice_carga])
                                 Fimse
                              Fimpara
                              Escreval("==================================================================")
                              Se (encontrou_sobrecarga = falso) Entao
                                 Escreval("Nenhum medico apresenta sobrecarga.")
                              Fimse
                           Fimse

                        Caso 0
                           Escreval("Voltando ao menu principal...")

                        OutroCaso
                           Escreval("Opcao invalida!")
                        FimEscolha

                        Se (opcao_relatorio_semana <> 0) Entao
                           Escreval()
                           Escreval("Digite qualquer caractere para continuar:")
                           Leia(continuar)
                           LimpaTela()
                        Fimse
                     Fimenquanto

                  Fimse

                  Se (opcao_menu = 4) Entao

                     // VALIDACOES DIARIAS EXISTENTES
                     opcao_esc <- 0
                     Enquanto (opcao_esc <> 5) Faça


                        // O loop repete tudo aqui dentro até que o usuário digite entre 1 e 5
                        repita
                           Escreval("========================================")
                           Escreval("        MENU - DIAS DA SEMANA           ")
                           Escreval("========================================")
                           Escreval("            [1] Segunda-feira")
                           Escreval("            [2] Terca-feira")
                           Escreval("            [3] Quarta-feira")
                           Escreval("            [4] Quinta-feira")
                           Escreval("            [5] Sexta-feira")
                           Escreval("            [0] Sair")
                           Escreval("========================================")
                           Escreva(" Escolha o dia da semana (1-5): ")
                           Leia(dia_semana_escolha)
                           Escreval("----------------------------------------")

                           Escolha dia_semana_escolha
                           caso 0
                              opcao_esc <- 5
                           Caso 1
                              dia_semana_nome_escolhido <- "SEGUNDA-FEIRA"

                           Caso 2
                              dia_semana_nome_escolhido <- "TERCA-FEIRA"

                           Caso 3
                              dia_semana_nome_escolhido <- "QUARTA-FEIRA"

                           Caso 4
                              dia_semana_nome_escolhido <- "QUINTA-FEIRA"

                           Caso 5
                              dia_semana_nome_escolhido <- "SEXTA-FEIRA"

                           OutroCaso
                              limpatela()
                              Escreval("Erro: numero invalido! Digite um valor de 1 a 5.")
                              Escreval("") // Linha em branco para organizar
                           FimEscolha

                        ate (dia_semana_escolha >= 0) e (dia_semana_escolha <= 5)

                        se (dia_semana_escolha > 0) entao
                           limpatela()
                           Escreval("==========================================")
                           Escreval("    VALIDAR PLANTÃO ",dia_semana_nome_escolhido)
                           Escreval("==========================================")
                           Escreval("            1 - TURNO DA MANHÃ            ")
                           Escreval("            2 - TURNO DA TARDE            ")
                           Escreval("            3 - TURNO DA NOITE            ")
                           Escreval("            4 - DIA (PLANTÃO 24 HRS)      ")
                           Escreval("            5 - SAIR                      ")
                           Escreval("==========================================")
                           Escreval()
                           Escreva("Escolha uma opção: ")
                           Leia(opcao_esc)
                           LimpaTela()
                        fimse
                        //VALIDAR SEGUNDA DE MANHA

                        Se (opcao_esc = 1) e (dia_semana_nome_escolhido = "SEGUNDA-FEIRA") Então

                           valida_cg_manha <- 0
                           valida_p_manha <- 0
                           valida_c_manha <- 0
                           falta_cg_manha <- 0
                           falta_p_manha <- 0
                           falta_c_manha <- 0

                           Para contador_escala de 1 até max_med Faça

                              Se (turno_manha_segunda[contador_escala] = 1) Então

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
                              Escreval("+--------------------------------------------+")
                              Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                              Escreval("+--------------------------------------------+")
                              Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                              Escreval("+--------------------------------------------+")
                              Escreval()

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                    RELATÓRIO DE MÉDICOS")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                              Escreval()
                              Escreval("--------------------------------------------------------------------------------------------")

                              Para indice_relatorio de 1 até max_med Faça

                                 Se (turno_manha_segunda[indice_relatorio] = 1) Então

                                    Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                       Se (med_Cod[indice_relatorio] < 10) Então

                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                       Senao

                                          Se (med_Cod[indice_relatorio] < 100) Então

                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                          Senao

                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                          Fimse

                                       Fimse

                                    Senão

                                       Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                          Se med_Cod[indice_relatorio] < 10 Então

                                             Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                          Senão

                                             Se med_Cod[indice_relatorio] < 100 Então

                                                Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                             Fimse

                                          Fimse

                                       Senão

                                          Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                             Se med_Cod[indice_relatorio] < 10 Então

                                                Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Se med_Cod[indice_relatorio] < 100 Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimpara

                           Senão

                              Escreval()
                              Escreval("+--------------------------------------------+")
                              Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                              Escreval("+--------------------------------------------+")
                              Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                              Escreval("+--------------------------------------------+")
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

                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("                                    RELATÓRIO DE MÉDICOS")
                              Escreval()
                              Escreval("============================================================================================")
                              Escreval()
                              Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                              Escreval()
                              Escreval("--------------------------------------------------------------------------------------------")

                              Para indice_relatorio de 1 até max_med Faça

                                 Se (turno_manha_segunda[indice_relatorio] = 1) Então

                                    Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                       Se (med_Cod[indice_relatorio] < 10) Então

                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                       Senao

                                          Se (med_Cod[indice_relatorio] < 100) Então

                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                          Senao

                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                          Fimse

                                       Fimse

                                    Senão

                                       Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                          Se med_Cod[indice_relatorio] < 10 Então

                                             Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                          Senão

                                             Se med_Cod[indice_relatorio] < 100 Então

                                                Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                             Fimse

                                          Fimse

                                       Senão

                                          Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                             Se med_Cod[indice_relatorio] < 10 Então

                                                EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Se med_Cod[indice_relatorio] < 100 Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimse

                              Fimpara

                           Fimse

                        Senão


                           //VALIDAR SEGUNDA TARDE

                           Se (opcao_esc = 2) e (dia_semana_nome_escolhido = "SEGUNDA-FEIRA") Então

                              valida_cg_tarde <- 0
                              valida_p_tarde <- 0
                              valida_c_tarde <- 0
                              falta_cg_tarde <- 0
                              falta_p_tarde <- 0
                              falta_c_tarde <- 0

                              Para contador_escala de 1 até max_med Faça

                                 Se (turno_tarde_segunda[contador_escala] = 1) Então

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

                                 Escreval()
                                 Escreval("+--------------------------------------------+")
                                 Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                 Escreval("+--------------------------------------------+")
                                 Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                 Escreval("+--------------------------------------------+")
                                 Escreval()

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                    RELATÓRIO DE MÉDICOS")
                                 Escreval()
                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                 Escreval()
                                 Escreval("--------------------------------------------------------------------------------------------")

                                 Para indice_relatorio de 1 até max_med Faça

                                    Se (turno_tarde_segunda[indice_relatorio] = 1) Então

                                       Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                          Se (med_Cod[indice_relatorio] < 10) Então

                                             Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                          Senao

                                             Se (med_Cod[indice_relatorio] < 100) Então

                                                Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                             Senao

                                                Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                             Fimse

                                          Fimse

                                       Senão

                                          Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                             Se med_Cod[indice_relatorio] < 10 Então

                                                Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Se med_Cod[indice_relatorio] < 100 Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Senão

                                             Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                Se med_Cod[indice_relatorio] < 10 Então

                                                   Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Se med_Cod[indice_relatorio] < 100 Então

                                                      Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimpara


                              Senão

                                 Escreval()
                                 Escreval("+--------------------------------------------+")
                                 Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                 Escreval("+--------------------------------------------+")
                                 Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                 Escreval("+--------------------------------------------+")
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

                                 Escreval("============================================================================================")
                                 Escreval()
                                 Escreval("                                    RELATÓRIO DE MÉDICOS")
                                 Escreval()
                                 EscrevaL("============================================================================================")
                                 Escreval()
                                 Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                 Escreval()
                                 Escreval("--------------------------------------------------------------------------------------------")

                                 Para indice_relatorio de 1 até max_med Faça

                                    Se (turno_tarde_segunda[indice_relatorio] = 1) Então

                                       Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                          Se (med_Cod[indice_relatorio] < 10) Então

                                             Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                             Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                          Senao

                                             Se (med_Cod[indice_relatorio] < 100) Então

                                                Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                             Senao

                                                Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                             Fimse

                                          Fimse

                                       Senão

                                          Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                             Se med_Cod[indice_relatorio] < 10 Então

                                                Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                             Senão

                                                Se med_Cod[indice_relatorio] < 100 Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Senão

                                             Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                Se med_Cod[indice_relatorio] < 10 Então

                                                   Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Se med_Cod[indice_relatorio] < 100 Então

                                                      Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimse

                                 Fimpara

                              Fimse


                           Senão


                              //VALIDAR SEGUNDA NOITE

                              Se (opcao_esc = 3) e (dia_semana_nome_escolhido = "SEGUNDA-FEIRA") Então

                                 valida_cg_noite <- 0
                                 valida_p_noite <- 0
                                 valida_c_noite <- 0
                                 falta_cg_noite <- 0
                                 falta_p_noite <- 0
                                 falta_c_noite <- 0

                                 Para contador_escala de 1 até max_med Faça

                                    Se (turno_noite_segunda[contador_escala] = 1) Então

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

                                    Escreval()
                                    Escreval("+--------------------------------------------+")
                                    Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                    Escreval("+--------------------------------------------+")
                                    Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                    Escreval("+--------------------------------------------+")
                                    Escreval()


                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                    RELATÓRIO DE MÉDICOS")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                    Escreval()
                                    Escreval("--------------------------------------------------------------------------------------------")

                                    Para indice_relatorio de 1 até max_med Faça

                                       Se (turno_noite_segunda[indice_relatorio] = 1) Então

                                          Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                             Se (med_Cod[indice_relatorio] < 10) Então

                                                Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                             Senao

                                                Se (med_Cod[indice_relatorio] < 100) Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                Senao

                                                   Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Senão

                                             Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                Se med_Cod[indice_relatorio] < 10 Então

                                                   Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Se med_Cod[indice_relatorio] < 100 Então

                                                      Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                   Fimse

                                                Fimse

                                             Senão

                                                Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                   Se med_Cod[indice_relatorio] < 10 Então

                                                      Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Se med_Cod[indice_relatorio] < 100 Então

                                                         Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimpara


                                 Senão

                                    Escreval()
                                    Escreval("+--------------------------------------------+")
                                    Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                    Escreval("+--------------------------------------------+")
                                    Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                    Escreval("+--------------------------------------------+")
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
                                    Escreval("                     RELATÓRIO                     ")
                                    Escreval()
                                    Escreval("===================================================")
                                    Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                    Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                    Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                    Escreval()

                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("                                    RELATÓRIO DE MÉDICOS")
                                    Escreval()
                                    Escreval("============================================================================================")
                                    Escreval()
                                    Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                    Escreval()
                                    Escreval("--------------------------------------------------------------------------------------------")

                                    Para indice_relatorio de 1 até max_med Faça

                                       Se (turno_noite_segunda[indice_relatorio] = 1) Então

                                          Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                             Se (med_Cod[indice_relatorio] < 10) Então

                                                Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                             Senao

                                                Se (med_Cod[indice_relatorio] < 100) Então

                                                   Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                Senao

                                                   Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                Fimse

                                             Fimse

                                          Senão

                                             Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                Se med_Cod[indice_relatorio] < 10 Então

                                                   Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                Senão

                                                   Se med_Cod[indice_relatorio] < 100 Então

                                                      Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                   Fimse

                                                Fimse

                                             Senão

                                                Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                   Se med_Cod[indice_relatorio] < 10 Então

                                                      Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Se med_Cod[indice_relatorio] < 100 Então

                                                         Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimse

                                    Fimpara


                                 Fimse

                                 // FIM DA VALIDAÇÃO DE 3 TURNO DE SEGUNDA

                              Senão
                                 //VALIDAR TERÇA DE MANHA

                                 Se (opcao_esc = 1) e (dia_semana_nome_escolhido = "TERCA-FEIRA") Então

                                    valida_cg_manha <- 0
                                    valida_p_manha <- 0
                                    valida_c_manha <- 0
                                    falta_cg_manha <- 0
                                    falta_p_manha <- 0
                                    falta_c_manha <- 0

                                    Para contador_escala de 1 até max_med Faça

                                       Se (turno_manha_terca[contador_escala] = 1) Então

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
                                       Escreval("+--------------------------------------------+")
                                       Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                       Escreval("+--------------------------------------------+")
                                       Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                       Escreval("+--------------------------------------------+")
                                       Escreval()

                                       Escreval("============================================================================================")
                                       Escreval()
                                       Escreval("                                    RELATÓRIO DE MÉDICOS")
                                       Escreval()
                                       Escreval("============================================================================================")
                                       Escreval()
                                       Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                       Escreval()
                                       Escreval("--------------------------------------------------------------------------------------------")

                                       Para indice_relatorio de 1 até max_med Faça

                                          Se (turno_manha_terca[indice_relatorio] = 1) Então

                                             Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                Se (med_Cod[indice_relatorio] < 10) Então

                                                   Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                Senao

                                                   Se (med_Cod[indice_relatorio] < 100) Então

                                                      Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                   Senao

                                                      Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                   Fimse

                                                Fimse

                                             Senão

                                                Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                   Se med_Cod[indice_relatorio] < 10 Então

                                                      Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Se med_Cod[indice_relatorio] < 100 Então

                                                         Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                      Fimse

                                                   Fimse

                                                Senão

                                                   Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                      Se med_Cod[indice_relatorio] < 10 Então

                                                         Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Se med_Cod[indice_relatorio] < 100 Então

                                                            Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimpara

                                    Senão

                                       Escreval()
                                       Escreval("+--------------------------------------------+")
                                       Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                       Escreval("+--------------------------------------------+")
                                       Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                       Escreval("+--------------------------------------------+")
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

                                       Escreval("============================================================================================")
                                       Escreval()
                                       Escreval("                                    RELATÓRIO DE MÉDICOS")
                                       Escreval()
                                       Escreval("============================================================================================")
                                       Escreval()
                                       Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                       Escreval()
                                       Escreval("--------------------------------------------------------------------------------------------")

                                       Para indice_relatorio de 1 até max_med Faça

                                          Se (turno_manha_terca[indice_relatorio] = 1) Então

                                             Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                Se (med_Cod[indice_relatorio] < 10) Então

                                                   Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                   Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                Senao

                                                   Se (med_Cod[indice_relatorio] < 100) Então

                                                      Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                   Senao

                                                      Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                   Fimse

                                                Fimse

                                             Senão

                                                Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                   Se med_Cod[indice_relatorio] < 10 Então

                                                      Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                   Senão

                                                      Se med_Cod[indice_relatorio] < 100 Então

                                                         Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                      Fimse

                                                   Fimse

                                                Senão

                                                   Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                      Se med_Cod[indice_relatorio] < 10 Então

                                                         EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Se med_Cod[indice_relatorio] < 100 Então

                                                            Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimse

                                       Fimpara

                                    Fimse

                                 Senão


                                    //VALIDAR TERCA TARDE

                                    Se (opcao_esc = 2) e (dia_semana_nome_escolhido = "TERCA-FEIRA") Então

                                       valida_cg_tarde <- 0
                                       valida_p_tarde <- 0
                                       valida_c_tarde <- 0
                                       falta_cg_tarde <- 0
                                       falta_p_tarde <- 0
                                       falta_c_tarde <- 0

                                       Para contador_escala de 1 até max_med Faça

                                          Se (turno_tarde_terca[contador_escala] = 1) Então

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

                                          Escreval()
                                          Escreval("+--------------------------------------------+")
                                          Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                          Escreval("+--------------------------------------------+")
                                          Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                          Escreval("+--------------------------------------------+")
                                          Escreval()

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                    RELATÓRIO DE MÉDICOS")
                                          Escreval()
                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                          Escreval()
                                          Escreval("--------------------------------------------------------------------------------------------")

                                          Para indice_relatorio de 1 até max_med Faça

                                             Se (turno_tarde_terca[indice_relatorio] = 1) Então

                                                Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                   Se (med_Cod[indice_relatorio] < 10) Então

                                                      Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                   Senao

                                                      Se (med_Cod[indice_relatorio] < 100) Então

                                                         Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                      Senao

                                                         Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                      Fimse

                                                   Fimse

                                                Senão

                                                   Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                      Se med_Cod[indice_relatorio] < 10 Então

                                                         Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Se med_Cod[indice_relatorio] < 100 Então

                                                            Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                         Fimse

                                                      Fimse

                                                   Senão

                                                      Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                         Se med_Cod[indice_relatorio] < 10 Então

                                                            Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Se med_Cod[indice_relatorio] < 100 Então

                                                               Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimpara


                                       Senão

                                          Escreval()
                                          Escreval("+--------------------------------------------+")
                                          Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                          Escreval("+--------------------------------------------+")
                                          Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                          Escreval("+--------------------------------------------+")
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

                                          Escreval("============================================================================================")
                                          Escreval()
                                          Escreval("                                    RELATÓRIO DE MÉDICOS")
                                          Escreval()
                                          EscrevaL("============================================================================================")
                                          Escreval()
                                          Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                          Escreval()
                                          Escreval("--------------------------------------------------------------------------------------------")

                                          Para indice_relatorio de 1 até max_med Faça

                                             Se (turno_tarde_terca[indice_relatorio] = 1) Então

                                                Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                   Se (med_Cod[indice_relatorio] < 10) Então

                                                      Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                      Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                   Senao

                                                      Se (med_Cod[indice_relatorio] < 100) Então

                                                         Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                      Senao

                                                         Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                      Fimse

                                                   Fimse

                                                Senão

                                                   Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                      Se med_Cod[indice_relatorio] < 10 Então

                                                         Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                      Senão

                                                         Se med_Cod[indice_relatorio] < 100 Então

                                                            Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                         Fimse

                                                      Fimse

                                                   Senão

                                                      Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                         Se med_Cod[indice_relatorio] < 10 Então

                                                            Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Se med_Cod[indice_relatorio] < 100 Então

                                                               Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimse

                                          Fimpara

                                       Fimse


                                    Senão


                                       //VALIDAR TERCA NOITE

                                       Se (opcao_esc = 3) e (dia_semana_nome_escolhido = "TERCA-FEIRA") Então

                                          valida_cg_noite <- 0
                                          valida_p_noite <- 0
                                          valida_c_noite <- 0
                                          falta_cg_noite <- 0
                                          falta_p_noite <- 0
                                          falta_c_noite <- 0

                                          Para contador_escala de 1 até max_med Faça

                                             Se (turno_noite_terca[contador_escala] = 1) Então

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

                                             Escreval()
                                             Escreval("+--------------------------------------------+")
                                             Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                             Escreval("+--------------------------------------------+")
                                             Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                             Escreval("+--------------------------------------------+")
                                             Escreval()


                                             Escreval("============================================================================================")
                                             Escreval()
                                             Escreval("                                    RELATÓRIO DE MÉDICOS")
                                             Escreval()
                                             Escreval("============================================================================================")
                                             Escreval()
                                             Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                             Escreval()
                                             Escreval("--------------------------------------------------------------------------------------------")

                                             Para indice_relatorio de 1 até max_med Faça

                                                Se (turno_noite_terca[indice_relatorio] = 1) Então

                                                   Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                      Se (med_Cod[indice_relatorio] < 10) Então

                                                         Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                      Senao

                                                         Se (med_Cod[indice_relatorio] < 100) Então

                                                            Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                         Senao

                                                            Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                         Fimse

                                                      Fimse

                                                   Senão

                                                      Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                         Se med_Cod[indice_relatorio] < 10 Então

                                                            Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Se med_Cod[indice_relatorio] < 100 Então

                                                               Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                            Fimse

                                                         Fimse

                                                      Senão

                                                         Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                            Se med_Cod[indice_relatorio] < 10 Então

                                                               Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Se med_Cod[indice_relatorio] < 100 Então

                                                                  Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimpara


                                          Senão

                                             Escreval()
                                             Escreval("+--------------------------------------------+")
                                             Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                             Escreval("+--------------------------------------------+")
                                             Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                             Escreval("+--------------------------------------------+")
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
                                             Escreval("                     RELATÓRIO                     ")
                                             Escreval()
                                             Escreval("===================================================")
                                             Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                             Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                             Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                             Escreval()

                                             Escreval("============================================================================================")
                                             Escreval()
                                             Escreval("                                    RELATÓRIO DE MÉDICOS")
                                             Escreval()
                                             Escreval("============================================================================================")
                                             Escreval()
                                             Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                             Escreval()
                                             Escreval("--------------------------------------------------------------------------------------------")

                                             Para indice_relatorio de 1 até max_med Faça

                                                Se (turno_noite_terca[indice_relatorio] = 1) Então

                                                   Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                      Se (med_Cod[indice_relatorio] < 10) Então

                                                         Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                         Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                      Senao

                                                         Se (med_Cod[indice_relatorio] < 100) Então

                                                            Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                         Senao

                                                            Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                         Fimse

                                                      Fimse

                                                   Senão

                                                      Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                         Se med_Cod[indice_relatorio] < 10 Então

                                                            Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                         Senão

                                                            Se med_Cod[indice_relatorio] < 100 Então

                                                               Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                            Fimse

                                                         Fimse

                                                      Senão

                                                         Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                            Se med_Cod[indice_relatorio] < 10 Então

                                                               Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Se med_Cod[indice_relatorio] < 100 Então

                                                                  Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimse

                                             Fimpara


                                          Fimse

                                          // FIM DA VALIDAÇÃO DE 3 TURNO DE TERCA

                                       Senão

                                          //VALIDAR QUARTA DE MANHA

                                          Se (opcao_esc = 1) e (dia_semana_nome_escolhido = "QUARTA-FEIRA") Então

                                             valida_cg_manha <- 0
                                             valida_p_manha <- 0
                                             valida_c_manha <- 0
                                             falta_cg_manha <- 0
                                             falta_p_manha <- 0
                                             falta_c_manha <- 0

                                             Para contador_escala de 1 até max_med Faça

                                                Se (turno_manha_quarta[contador_escala] = 1) Então

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
                                                Escreval("+--------------------------------------------+")
                                                Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                                Escreval("+--------------------------------------------+")
                                                Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                Escreval("+--------------------------------------------+")
                                                Escreval()

                                                Escreval("============================================================================================")
                                                Escreval()
                                                Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                Escreval()
                                                Escreval("============================================================================================")
                                                Escreval()
                                                Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                Escreval()
                                                Escreval("--------------------------------------------------------------------------------------------")

                                                Para indice_relatorio de 1 até max_med Faça

                                                   Se (turno_manha_quarta[indice_relatorio] = 1) Então

                                                      Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                         Se (med_Cod[indice_relatorio] < 10) Então

                                                            Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                         Senao

                                                            Se (med_Cod[indice_relatorio] < 100) Então

                                                               Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                            Senao

                                                               Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                            Fimse

                                                         Fimse

                                                      Senão

                                                         Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                            Se med_Cod[indice_relatorio] < 10 Então

                                                               Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Se med_Cod[indice_relatorio] < 100 Então

                                                                  Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                               Fimse

                                                            Fimse

                                                         Senão

                                                            Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                               Se med_Cod[indice_relatorio] < 10 Então

                                                                  Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Se med_Cod[indice_relatorio] < 100 Então

                                                                     Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimpara

                                             Senão

                                                Escreval()
                                                Escreval("+--------------------------------------------+")
                                                Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                                Escreval("+--------------------------------------------+")
                                                Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                Escreval("+--------------------------------------------+")
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

                                                Escreval("============================================================================================")
                                                Escreval()
                                                Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                Escreval()
                                                Escreval("============================================================================================")
                                                Escreval()
                                                Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                Escreval()
                                                Escreval("--------------------------------------------------------------------------------------------")

                                                Para indice_relatorio de 1 até max_med Faça

                                                   Se (turno_manha_quarta[indice_relatorio] = 1) Então

                                                      Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                         Se (med_Cod[indice_relatorio] < 10) Então

                                                            Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                            Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                         Senao

                                                            Se (med_Cod[indice_relatorio] < 100) Então

                                                               Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                            Senao

                                                               Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                            Fimse

                                                         Fimse

                                                      Senão

                                                         Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                            Se med_Cod[indice_relatorio] < 10 Então

                                                               Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                            Senão

                                                               Se med_Cod[indice_relatorio] < 100 Então

                                                                  Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                               Fimse

                                                            Fimse

                                                         Senão

                                                            Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                               Se med_Cod[indice_relatorio] < 10 Então

                                                                  EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Se med_Cod[indice_relatorio] < 100 Então

                                                                     Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimse

                                                Fimpara

                                             Fimse

                                          Senão


                                             //VALIDAR QUARTA TARDE

                                             Se (opcao_esc = 2) e (dia_semana_nome_escolhido = "QUARTA-FEIRA") Então

                                                valida_cg_tarde <- 0
                                                valida_p_tarde <- 0
                                                valida_c_tarde <- 0
                                                falta_cg_tarde <- 0
                                                falta_p_tarde <- 0
                                                falta_c_tarde <- 0

                                                Para contador_escala de 1 até max_med Faça

                                                   Se (turno_tarde_quarta[contador_escala] = 1) Então

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

                                                   Escreval()
                                                   Escreval("+--------------------------------------------+")
                                                   Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                                   Escreval("+--------------------------------------------+")
                                                   Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                   Escreval("+--------------------------------------------+")
                                                   Escreval()

                                                   Escreval("============================================================================================")
                                                   Escreval()
                                                   Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                   Escreval()
                                                   Escreval("============================================================================================")
                                                   Escreval()
                                                   Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                   Escreval()
                                                   Escreval("--------------------------------------------------------------------------------------------")

                                                   Para indice_relatorio de 1 até max_med Faça

                                                      Se (turno_tarde_quarta[indice_relatorio] = 1) Então

                                                         Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                            Se (med_Cod[indice_relatorio] < 10) Então

                                                               Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                            Senao

                                                               Se (med_Cod[indice_relatorio] < 100) Então

                                                                  Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                               Senao

                                                                  Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                               Fimse

                                                            Fimse

                                                         Senão

                                                            Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                               Se med_Cod[indice_relatorio] < 10 Então

                                                                  Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Se med_Cod[indice_relatorio] < 100 Então

                                                                     Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                  Fimse

                                                               Fimse

                                                            Senão

                                                               Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                  Se med_Cod[indice_relatorio] < 10 Então

                                                                     Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Se med_Cod[indice_relatorio] < 100 Então

                                                                        Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimpara


                                                Senão

                                                   Escreval()
                                                   Escreval("+--------------------------------------------+")
                                                   Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                                   Escreval("+--------------------------------------------+")
                                                   Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                   Escreval("+--------------------------------------------+")
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

                                                   Escreval("============================================================================================")
                                                   Escreval()
                                                   Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                   Escreval()
                                                   EscrevaL("============================================================================================")
                                                   Escreval()
                                                   Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                   Escreval()
                                                   Escreval("--------------------------------------------------------------------------------------------")

                                                   Para indice_relatorio de 1 até max_med Faça

                                                      Se (turno_tarde_quarta[indice_relatorio] = 1) Então

                                                         Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                            Se (med_Cod[indice_relatorio] < 10) Então

                                                               Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                               Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                            Senao

                                                               Se (med_Cod[indice_relatorio] < 100) Então

                                                                  Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                               Senao

                                                                  Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                               Fimse

                                                            Fimse

                                                         Senão

                                                            Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                               Se med_Cod[indice_relatorio] < 10 Então

                                                                  Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                               Senão

                                                                  Se med_Cod[indice_relatorio] < 100 Então

                                                                     Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                  Fimse

                                                               Fimse

                                                            Senão

                                                               Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                  Se med_Cod[indice_relatorio] < 10 Então

                                                                     Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Se med_Cod[indice_relatorio] < 100 Então

                                                                        Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimse

                                                   Fimpara

                                                Fimse


                                             Senão


                                                //VALIDAR QUARTA NOITE

                                                Se (opcao_esc = 3) e (dia_semana_nome_escolhido = "QUARTA-FEIRA") Então

                                                   valida_cg_noite <- 0
                                                   valida_p_noite <- 0
                                                   valida_c_noite <- 0
                                                   falta_cg_noite <- 0
                                                   falta_p_noite <- 0
                                                   falta_c_noite <- 0

                                                   Para contador_escala de 1 até max_med Faça

                                                      Se (turno_noite_quarta[contador_escala] = 1) Então

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

                                                      Escreval()
                                                      Escreval("+--------------------------------------------+")
                                                      Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                                      Escreval("+--------------------------------------------+")
                                                      Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                      Escreval("+--------------------------------------------+")
                                                      Escreval()


                                                      Escreval("============================================================================================")
                                                      Escreval()
                                                      Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                      Escreval()
                                                      Escreval("============================================================================================")
                                                      Escreval()
                                                      Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                      Escreval()
                                                      Escreval("--------------------------------------------------------------------------------------------")

                                                      Para indice_relatorio de 1 até max_med Faça

                                                         Se (turno_noite_quarta[indice_relatorio] = 1) Então

                                                            Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                               Se (med_Cod[indice_relatorio] < 10) Então

                                                                  Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                               Senao

                                                                  Se (med_Cod[indice_relatorio] < 100) Então

                                                                     Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senao

                                                                     Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                  Fimse

                                                               Fimse

                                                            Senão

                                                               Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                  Se med_Cod[indice_relatorio] < 10 Então

                                                                     Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Se med_Cod[indice_relatorio] < 100 Então

                                                                        Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                     Fimse

                                                                  Fimse

                                                               Senão

                                                                  Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                     Se med_Cod[indice_relatorio] < 10 Então

                                                                        Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Se med_Cod[indice_relatorio] < 100 Então

                                                                           Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimpara


                                                   Senão

                                                      Escreval()
                                                      Escreval("+--------------------------------------------+")
                                                      Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                                      Escreval("+--------------------------------------------+")
                                                      Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                      Escreval("+--------------------------------------------+")
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
                                                      Escreval("                     RELATÓRIO                     ")
                                                      Escreval()
                                                      Escreval("===================================================")
                                                      Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                                      Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                                      Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                                      Escreval()

                                                      Escreval("============================================================================================")
                                                      Escreval()
                                                      Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                      Escreval()
                                                      Escreval("============================================================================================")
                                                      Escreval()
                                                      Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                      Escreval()
                                                      Escreval("--------------------------------------------------------------------------------------------")

                                                      Para indice_relatorio de 1 até max_med Faça

                                                         Se (turno_noite_quarta[indice_relatorio] = 1) Então

                                                            Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                               Se (med_Cod[indice_relatorio] < 10) Então

                                                                  Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                  Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                               Senao

                                                                  Se (med_Cod[indice_relatorio] < 100) Então

                                                                     Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senao

                                                                     Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                  Fimse

                                                               Fimse

                                                            Senão

                                                               Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                  Se med_Cod[indice_relatorio] < 10 Então

                                                                     Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senão

                                                                     Se med_Cod[indice_relatorio] < 100 Então

                                                                        Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                     Fimse

                                                                  Fimse

                                                               Senão

                                                                  Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                     Se med_Cod[indice_relatorio] < 10 Então

                                                                        Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Se med_Cod[indice_relatorio] < 100 Então

                                                                           Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimse

                                                      Fimpara


                                                   Fimse

                                                   // FIM DA VALIDAÇÃO DE 3 TURNO DE QUARTA

                                                Senão
                                                   //VALIDAR QUINTA DE MANHA

                                                   Se (opcao_esc = 1) e (dia_semana_nome_escolhido = "QUINTA-FEIRA") Então

                                                      valida_cg_manha <- 0
                                                      valida_p_manha <- 0
                                                      valida_c_manha <- 0
                                                      falta_cg_manha <- 0
                                                      falta_p_manha <- 0
                                                      falta_c_manha <- 0

                                                      Para contador_escala de 1 até max_med Faça

                                                         Se (turno_manha_quinta[contador_escala] = 1) Então

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
                                                         Escreval("+--------------------------------------------+")
                                                         Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                                         Escreval("+--------------------------------------------+")
                                                         Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                         Escreval("+--------------------------------------------+")
                                                         Escreval()

                                                         Escreval("============================================================================================")
                                                         Escreval()
                                                         Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                         Escreval()
                                                         Escreval("============================================================================================")
                                                         Escreval()
                                                         Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                         Escreval()
                                                         Escreval("--------------------------------------------------------------------------------------------")

                                                         Para indice_relatorio de 1 até max_med Faça

                                                            Se (turno_manha_quinta[indice_relatorio] = 1) Então

                                                               Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                  Se (med_Cod[indice_relatorio] < 10) Então

                                                                     Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senao

                                                                     Se (med_Cod[indice_relatorio] < 100) Então

                                                                        Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senao

                                                                        Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                     Fimse

                                                                  Fimse

                                                               Senão

                                                                  Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                     Se med_Cod[indice_relatorio] < 10 Então

                                                                        Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Se med_Cod[indice_relatorio] < 100 Então

                                                                           Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                        Fimse

                                                                     Fimse

                                                                  Senão

                                                                     Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                        Se med_Cod[indice_relatorio] < 10 Então

                                                                           Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Se med_Cod[indice_relatorio] < 100 Então

                                                                              Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimpara

                                                      Senão

                                                         Escreval()
                                                         Escreval("+--------------------------------------------+")
                                                         Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                                         Escreval("+--------------------------------------------+")
                                                         Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                         Escreval("+--------------------------------------------+")
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

                                                         Escreval("============================================================================================")
                                                         Escreval()
                                                         Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                         Escreval()
                                                         Escreval("============================================================================================")
                                                         Escreval()
                                                         Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                         Escreval()
                                                         Escreval("--------------------------------------------------------------------------------------------")

                                                         Para indice_relatorio de 1 até max_med Faça

                                                            Se (turno_manha_quinta[indice_relatorio] = 1) Então

                                                               Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                  Se (med_Cod[indice_relatorio] < 10) Então

                                                                     Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                     Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                  Senao

                                                                     Se (med_Cod[indice_relatorio] < 100) Então

                                                                        Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senao

                                                                        Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                     Fimse

                                                                  Fimse

                                                               Senão

                                                                  Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                     Se med_Cod[indice_relatorio] < 10 Então

                                                                        Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senão

                                                                        Se med_Cod[indice_relatorio] < 100 Então

                                                                           Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                        Fimse

                                                                     Fimse

                                                                  Senão

                                                                     Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                        Se med_Cod[indice_relatorio] < 10 Então

                                                                           EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Se med_Cod[indice_relatorio] < 100 Então

                                                                              Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimse

                                                         Fimpara

                                                      Fimse

                                                   Senão


                                                      //VALIDAR QUINTA TARDE

                                                      Se (opcao_esc = 2) e (dia_semana_nome_escolhido = "QUINTA-FEIRA") Então

                                                         valida_cg_tarde <- 0
                                                         valida_p_tarde <- 0
                                                         valida_c_tarde <- 0
                                                         falta_cg_tarde <- 0
                                                         falta_p_tarde <- 0
                                                         falta_c_tarde <- 0

                                                         Para contador_escala de 1 até max_med Faça

                                                            Se (turno_tarde_quinta[contador_escala] = 1) Então

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

                                                            Escreval()
                                                            Escreval("+--------------------------------------------+")
                                                            Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                                            Escreval("+--------------------------------------------+")
                                                            Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                            Escreval("+--------------------------------------------+")
                                                            Escreval()

                                                            Escreval("============================================================================================")
                                                            Escreval()
                                                            Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                            Escreval()
                                                            Escreval("============================================================================================")
                                                            Escreval()
                                                            Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                            Escreval()
                                                            Escreval("--------------------------------------------------------------------------------------------")

                                                            Para indice_relatorio de 1 até max_med Faça

                                                               Se (turno_tarde_quinta[indice_relatorio] = 1) Então

                                                                  Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                     Se (med_Cod[indice_relatorio] < 10) Então

                                                                        Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senao

                                                                        Se (med_Cod[indice_relatorio] < 100) Então

                                                                           Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senao

                                                                           Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                        Fimse

                                                                     Fimse

                                                                  Senão

                                                                     Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                        Se med_Cod[indice_relatorio] < 10 Então

                                                                           Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Se med_Cod[indice_relatorio] < 100 Então

                                                                              Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                           Fimse

                                                                        Fimse

                                                                     Senão

                                                                        Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                           Se med_Cod[indice_relatorio] < 10 Então

                                                                              Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Se med_Cod[indice_relatorio] < 100 Então

                                                                                 Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimpara


                                                         Senão

                                                            Escreval()
                                                            Escreval("+--------------------------------------------+")
                                                            Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                                            Escreval("+--------------------------------------------+")
                                                            Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                            Escreval("+--------------------------------------------+")
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

                                                            Escreval("============================================================================================")
                                                            Escreval()
                                                            Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                            Escreval()
                                                            EscrevaL("============================================================================================")
                                                            Escreval()
                                                            Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                            Escreval()
                                                            Escreval("--------------------------------------------------------------------------------------------")

                                                            Para indice_relatorio de 1 até max_med Faça

                                                               Se (turno_tarde_quinta[indice_relatorio] = 1) Então

                                                                  Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                     Se (med_Cod[indice_relatorio] < 10) Então

                                                                        Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                        Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                     Senao

                                                                        Se (med_Cod[indice_relatorio] < 100) Então

                                                                           Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senao

                                                                           Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                        Fimse

                                                                     Fimse

                                                                  Senão

                                                                     Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                        Se med_Cod[indice_relatorio] < 10 Então

                                                                           Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senão

                                                                           Se med_Cod[indice_relatorio] < 100 Então

                                                                              Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                           Fimse

                                                                        Fimse

                                                                     Senão

                                                                        Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                           Se med_Cod[indice_relatorio] < 10 Então

                                                                              Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Se med_Cod[indice_relatorio] < 100 Então

                                                                                 Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimse

                                                            Fimpara

                                                         Fimse


                                                      Senão


                                                         //VALIDAR QUINTA NOITE

                                                         Se (opcao_esc = 3) e (dia_semana_nome_escolhido = "QUINTA-FEIRA") Então

                                                            valida_cg_noite <- 0
                                                            valida_p_noite <- 0
                                                            valida_c_noite <- 0
                                                            falta_cg_noite <- 0
                                                            falta_p_noite <- 0
                                                            falta_c_noite <- 0

                                                            Para contador_escala de 1 até max_med Faça

                                                               Se (turno_noite_quinta[contador_escala] = 1) Então

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

                                                               Escreval()
                                                               Escreval("+--------------------------------------------+")
                                                               Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                                               Escreval("+--------------------------------------------+")
                                                               Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                               Escreval("+--------------------------------------------+")
                                                               Escreval()


                                                               Escreval("============================================================================================")
                                                               Escreval()
                                                               Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                               Escreval()
                                                               Escreval("============================================================================================")
                                                               Escreval()
                                                               Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                               Escreval()
                                                               Escreval("--------------------------------------------------------------------------------------------")

                                                               Para indice_relatorio de 1 até max_med Faça

                                                                  Se (turno_noite_quinta[indice_relatorio] = 1) Então

                                                                     Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                        Se (med_Cod[indice_relatorio] < 10) Então

                                                                           Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senao

                                                                           Se (med_Cod[indice_relatorio] < 100) Então

                                                                              Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senao

                                                                              Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                           Fimse

                                                                        Fimse

                                                                     Senão

                                                                        Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                           Se med_Cod[indice_relatorio] < 10 Então

                                                                              Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Se med_Cod[indice_relatorio] < 100 Então

                                                                                 Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                              Fimse

                                                                           Fimse

                                                                        Senão

                                                                           Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                              Se med_Cod[indice_relatorio] < 10 Então

                                                                                 Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Se med_Cod[indice_relatorio] < 100 Então

                                                                                    Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimpara


                                                            Senão

                                                               Escreval()
                                                               Escreval("+--------------------------------------------+")
                                                               Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                                               Escreval("+--------------------------------------------+")
                                                               Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                               Escreval("+--------------------------------------------+")
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
                                                               Escreval("                     RELATÓRIO                     ")
                                                               Escreval()
                                                               Escreval("===================================================")
                                                               Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                                               Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                                               Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                                               Escreval()

                                                               Escreval("============================================================================================")
                                                               Escreval()
                                                               Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                               Escreval()
                                                               Escreval("============================================================================================")
                                                               Escreval()
                                                               Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                               Escreval()
                                                               Escreval("--------------------------------------------------------------------------------------------")

                                                               Para indice_relatorio de 1 até max_med Faça

                                                                  Se (turno_noite_quinta[indice_relatorio] = 1) Então

                                                                     Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                        Se (med_Cod[indice_relatorio] < 10) Então

                                                                           Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                           Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                        Senao

                                                                           Se (med_Cod[indice_relatorio] < 100) Então

                                                                              Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senao

                                                                              Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                           Fimse

                                                                        Fimse

                                                                     Senão

                                                                        Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                           Se med_Cod[indice_relatorio] < 10 Então

                                                                              Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senão

                                                                              Se med_Cod[indice_relatorio] < 100 Então

                                                                                 Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                              Fimse

                                                                           Fimse

                                                                        Senão

                                                                           Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                              Se med_Cod[indice_relatorio] < 10 Então

                                                                                 Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Se med_Cod[indice_relatorio] < 100 Então

                                                                                    Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimse

                                                               Fimpara


                                                            Fimse

                                                            // FIM DA VALIDAÇÃO DE 3 TURNO DE QUINTA

                                                         Senão

                                                            //VALIDAR SEXTA DE MANHA

                                                            Se (opcao_esc = 1) e (dia_semana_nome_escolhido = "SEXTA-FEIRA") Então

                                                               valida_cg_manha <- 0
                                                               valida_p_manha <- 0
                                                               valida_c_manha <- 0
                                                               falta_cg_manha <- 0
                                                               falta_p_manha <- 0
                                                               falta_c_manha <- 0

                                                               Para contador_escala de 1 até max_med Faça

                                                                  Se (turno_manha_sexta[contador_escala] = 1) Então

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
                                                                  Escreval("+--------------------------------------------+")
                                                                  Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                                                  Escreval("+--------------------------------------------+")
                                                                  Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                                  Escreval("+--------------------------------------------+")
                                                                  Escreval()

                                                                  Escreval("============================================================================================")
                                                                  Escreval()
                                                                  Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                                  Escreval()
                                                                  Escreval("============================================================================================")
                                                                  Escreval()
                                                                  Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                  Escreval()
                                                                  Escreval("--------------------------------------------------------------------------------------------")

                                                                  Para indice_relatorio de 1 até max_med Faça

                                                                     Se (turno_manha_sexta[indice_relatorio] = 1) Então

                                                                        Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                           Se (med_Cod[indice_relatorio] < 10) Então

                                                                              Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senao

                                                                              Se (med_Cod[indice_relatorio] < 100) Então

                                                                                 Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senao

                                                                                 Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                              Fimse

                                                                           Fimse

                                                                        Senão

                                                                           Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                              Se med_Cod[indice_relatorio] < 10 Então

                                                                                 Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Se med_Cod[indice_relatorio] < 100 Então

                                                                                    Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Fimse

                                                                              Fimse

                                                                           Senão

                                                                              Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                 Se med_Cod[indice_relatorio] < 10 Então

                                                                                    Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Se med_Cod[indice_relatorio] < 100 Então

                                                                                       Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimpara

                                                               Senão

                                                                  Escreval()
                                                                  Escreval("+--------------------------------------------+")
                                                                  Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE MANHÃ")
                                                                  Escreval("+--------------------------------------------+")
                                                                  Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                                  Escreval("+--------------------------------------------+")
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

                                                                  Escreval("============================================================================================")
                                                                  Escreval()
                                                                  Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                                  Escreval()
                                                                  Escreval("============================================================================================")
                                                                  Escreval()
                                                                  Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                  Escreval()
                                                                  Escreval("--------------------------------------------------------------------------------------------")

                                                                  Para indice_relatorio de 1 até max_med Faça

                                                                     Se (turno_manha_sexta[indice_relatorio] = 1) Então

                                                                        Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                           Se (med_Cod[indice_relatorio] < 10) Então

                                                                              Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                              Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                           Senao

                                                                              Se (med_Cod[indice_relatorio] < 100) Então

                                                                                 Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senao

                                                                                 Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                              Fimse

                                                                           Fimse

                                                                        Senão

                                                                           Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                              Se med_Cod[indice_relatorio] < 10 Então

                                                                                 Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senão

                                                                                 Se med_Cod[indice_relatorio] < 100 Então

                                                                                    Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Fimse

                                                                              Fimse

                                                                           Senão

                                                                              Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                 Se med_Cod[indice_relatorio] < 10 Então

                                                                                    EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Se med_Cod[indice_relatorio] < 100 Então

                                                                                       Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimse

                                                                  Fimpara

                                                               Fimse

                                                            Senão


                                                               //VALIDAR SEXTA TARDE

                                                               Se (opcao_esc = 2) e (dia_semana_nome_escolhido = "SEXTA-FEIRA") Então

                                                                  valida_cg_tarde <- 0
                                                                  valida_p_tarde <- 0
                                                                  valida_c_tarde <- 0
                                                                  falta_cg_tarde <- 0
                                                                  falta_p_tarde <- 0
                                                                  falta_c_tarde <- 0

                                                                  Para contador_escala de 1 até max_med Faça

                                                                     Se (turno_tarde_sexta[contador_escala] = 1) Então

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

                                                                     Escreval()
                                                                     Escreval("+--------------------------------------------+")
                                                                     Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                                                     Escreval("+--------------------------------------------+")
                                                                     Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                                     Escreval("+--------------------------------------------+")
                                                                     Escreval()

                                                                     Escreval("============================================================================================")
                                                                     Escreval()
                                                                     Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                                     Escreval()
                                                                     Escreval("============================================================================================")
                                                                     Escreval()
                                                                     Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                     Escreval()
                                                                     Escreval("--------------------------------------------------------------------------------------------")

                                                                     Para indice_relatorio de 1 até max_med Faça

                                                                        Se (turno_tarde_sexta[indice_relatorio] = 1) Então

                                                                           Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                              Se (med_Cod[indice_relatorio] < 10) Então

                                                                                 Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senao

                                                                                 Se (med_Cod[indice_relatorio] < 100) Então

                                                                                    Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senao

                                                                                    Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Fimse

                                                                              Fimse

                                                                           Senão

                                                                              Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                 Se med_Cod[indice_relatorio] < 10 Então

                                                                                    Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Se med_Cod[indice_relatorio] < 100 Então

                                                                                       Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Fimse

                                                                                 Fimse

                                                                              Senão

                                                                                 Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                    Se med_Cod[indice_relatorio] < 10 Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Se med_Cod[indice_relatorio] < 100 Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimpara


                                                                  Senão

                                                                     Escreval()
                                                                     Escreval("+--------------------------------------------+")
                                                                     Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE TARDE")
                                                                     Escreval("+--------------------------------------------+")
                                                                     Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                                     Escreval("+--------------------------------------------+")
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

                                                                     Escreval("============================================================================================")
                                                                     Escreval()
                                                                     Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                                     Escreval()
                                                                     EscrevaL("============================================================================================")
                                                                     Escreval()
                                                                     Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                     Escreval()
                                                                     Escreval("--------------------------------------------------------------------------------------------")

                                                                     Para indice_relatorio de 1 até max_med Faça

                                                                        Se (turno_tarde_sexta[indice_relatorio] = 1) Então

                                                                           Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                              Se (med_Cod[indice_relatorio] < 10) Então

                                                                                 Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                 Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                              Senao

                                                                                 Se (med_Cod[indice_relatorio] < 100) Então

                                                                                    Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senao

                                                                                    Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Fimse

                                                                              Fimse

                                                                           Senão

                                                                              Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                 Se med_Cod[indice_relatorio] < 10 Então

                                                                                    Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senão

                                                                                    Se med_Cod[indice_relatorio] < 100 Então

                                                                                       Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Fimse

                                                                                 Fimse

                                                                              Senão

                                                                                 Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                    Se med_Cod[indice_relatorio] < 10 Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Se med_Cod[indice_relatorio] < 100 Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimse

                                                                     Fimpara

                                                                  Fimse


                                                               Senão


                                                                  //VALIDAR SEXTA NOITE

                                                                  Se (opcao_esc = 3) e (dia_semana_nome_escolhido = "SEXTA-FEIRA") Então

                                                                     valida_cg_noite <- 0
                                                                     valida_p_noite <- 0
                                                                     valida_c_noite <- 0
                                                                     falta_cg_noite <- 0
                                                                     falta_p_noite <- 0
                                                                     falta_c_noite <- 0

                                                                     Para contador_escala de 1 até max_med Faça

                                                                        Se (turno_noite_sexta[contador_escala] = 1) Então

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

                                                                        Escreval()
                                                                        Escreval("+--------------------------------------------+")
                                                                        Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                                                        Escreval("+--------------------------------------------+")
                                                                        Escreval("| STATUS: PUBLICACAO LIBERADA                |")
                                                                        Escreval("+--------------------------------------------+")
                                                                        Escreval()


                                                                        Escreval("============================================================================================")
                                                                        Escreval()
                                                                        Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                                        Escreval()
                                                                        Escreval("============================================================================================")
                                                                        Escreval()
                                                                        Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                        Escreval()
                                                                        Escreval("--------------------------------------------------------------------------------------------")

                                                                        Para indice_relatorio de 1 até max_med Faça

                                                                           Se (turno_noite_sexta[indice_relatorio] = 1) Então

                                                                              Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                 Se (med_Cod[indice_relatorio] < 10) Então

                                                                                    Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senao

                                                                                    Se (med_Cod[indice_relatorio] < 100) Então

                                                                                       Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Fimse

                                                                                 Fimse

                                                                              Senão

                                                                                 Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                    Se med_Cod[indice_relatorio] < 10 Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Se med_Cod[indice_relatorio] < 100 Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimpara


                                                                     Senão

                                                                        Escreval()
                                                                        Escreval("+--------------------------------------------+")
                                                                        Escreval("| DIA SELECIONADO: ", dia_semana_nome_escolhido, " DE NOITE")
                                                                        Escreval("+--------------------------------------------+")
                                                                        Escreval("| STATUS: PUBLICACAO BLOQUEADA               |")
                                                                        Escreval("+--------------------------------------------+")
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
                                                                        Escreval("                     RELATÓRIO                     ")
                                                                        Escreval()
                                                                        Escreval("===================================================")
                                                                        Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                                                        Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                                                        Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                                                        Escreval()

                                                                        Escreval("============================================================================================")
                                                                        Escreval()
                                                                        Escreval("                                    RELATÓRIO DE MÉDICOS")
                                                                        Escreval()
                                                                        Escreval("============================================================================================")
                                                                        Escreval()
                                                                        Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                        Escreval()
                                                                        Escreval("--------------------------------------------------------------------------------------------")

                                                                        Para indice_relatorio de 1 até max_med Faça

                                                                           Se (turno_noite_sexta[indice_relatorio] = 1) Então

                                                                              Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                 Se (med_Cod[indice_relatorio] < 10) Então

                                                                                    Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                    Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                 Senao

                                                                                    Se (med_Cod[indice_relatorio] < 100) Então

                                                                                       Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Fimse

                                                                                 Fimse

                                                                              Senão

                                                                                 Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                    Se med_Cod[indice_relatorio] < 10 Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senão

                                                                                       Se med_Cod[indice_relatorio] < 100 Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimse

                                                                        Fimpara


                                                                     Fimse

                                                                     // FIM DA VALIDAÇÃO DE 3 TURNO DE SEXTA
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

                                                                           Se (turno_manha_segunda[contador_escala] = 1) Então

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


                                                                           Se (turno_tarde_segunda[contador_escala] = 1) Então

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

                                                                           Escreval()
                                                                           Escreval("============================================")
                                                                           Escreval()
                                                                           Escreval("  PLANTÃO DE 24 HRS * PODE * SER PUBLICADO  ")
                                                                           Escreval()
                                                                           Escreval("============================================")
                                                                           Escreval()

                                                                           Escreval("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("                         RELATÓRIO DE MÉDICOS - TURNO DA MANHÃ                              ")
                                                                           Escreval()
                                                                           EscrevaL("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                           Escreval()
                                                                           Escreval("--------------------------------------------------------------------------------------------")

                                                                           Para indice_relatorio de 1 até max_med Faça

                                                                              Se (turno_manha_segunda[indice_relatorio] = 1) Então

                                                                                 Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                    Se (med_Cod[indice_relatorio] < 10) Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Se (med_Cod[indice_relatorio] < 100) Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senao

                                                                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Senão

                                                                                       Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                          Se med_Cod[indice_relatorio] < 10 Então

                                                                                             EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Se med_Cod[indice_relatorio] < 100 Então

                                                                                                EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Senão

                                                                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Fimse

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimpara

                                                                           Escreval("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("                         RELATÓRIO DE MÉDICOS - TURNO DA TARDE                              ")
                                                                           Escreval()
                                                                           EscrevaL("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                           Escreval()
                                                                           Escreval("--------------------------------------------------------------------------------------------")

                                                                           Para indice_relatorio de 1 até max_med Faça

                                                                              Se (turno_tarde_segunda[indice_relatorio] = 1) Então

                                                                                 Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                    Se (med_Cod[indice_relatorio] < 10) Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Se (med_Cod[indice_relatorio] < 100) Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senao

                                                                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Senão

                                                                                       Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                          Se med_Cod[indice_relatorio] < 10 Então

                                                                                             EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Se med_Cod[indice_relatorio] < 100 Então

                                                                                                EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Senão

                                                                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Fimse

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimpara


                                                                           Escreval("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("                         RELATÓRIO DE MÉDICOS - TURNO DA NOITE                              ")
                                                                           Escreval()
                                                                           EscrevaL("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                           Escreval()
                                                                           Escreval("--------------------------------------------------------------------------------------------")

                                                                           Para indice_relatorio de 1 até max_med Faça

                                                                              Se (turno_noite[indice_relatorio] = 1) Então

                                                                                 Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                    Se (med_Cod[indice_relatorio] < 10) Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Se (med_Cod[indice_relatorio] < 100) Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senao

                                                                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Senão

                                                                                       Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                          Se med_Cod[indice_relatorio] < 10 Então

                                                                                             EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Se med_Cod[indice_relatorio] < 100 Então

                                                                                                EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Senão

                                                                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Fimse

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimpara

                                                                        Senão

                                                                           Escreval()
                                                                           Escreval("============================================")
                                                                           Escreval()
                                                                           Escreval("PLANTÃO DE 24 HRS * NÃO PODE * SER PUBLICADO")
                                                                           Escreval()
                                                                           Escreval("============================================")
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
                                                                           Escreval("             RELATÓRIO - TURNO DA MANHÃ            ")
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
                                                                           Escreval("            RELATÓRIO - TURNO DA TARDE             ")
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
                                                                           Escreval("            RELATÓRIO - TURNO DA NOITE             ")
                                                                           Escreval()
                                                                           Escreval("===================================================")
                                                                           Escreval(" - FALTAM: ", falta_cg_noite, " CLÍNICO(S) GERAL(IS)")
                                                                           Escreval(" - FALTAM: ", falta_p_noite, " PEDIATRA")
                                                                           Escreval(" - FALTAM: ", falta_c_noite, " CIRURGIÃO")
                                                                           Escreval()

                                                                           Escreval("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("                         RELATÓRIO DE MÉDICOS - TURNO DA MANHÃ                              ")
                                                                           Escreval()
                                                                           EscrevaL("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                           Escreval()
                                                                           Escreval("--------------------------------------------------------------------------------------------")

                                                                           Para indice_relatorio de 1 até max_med Faça

                                                                              Se (turno_manha_segunda[indice_relatorio] = 1) Então

                                                                                 Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                    Se (med_Cod[indice_relatorio] < 10) Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Se (med_Cod[indice_relatorio] < 100) Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senao

                                                                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Senão

                                                                                       Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                          Se med_Cod[indice_relatorio] < 10 Então

                                                                                             EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Se med_Cod[indice_relatorio] < 100 Então

                                                                                                EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Senão

                                                                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Fimse

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimpara

                                                                           Escreval("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("                         RELATÓRIO DE MÉDICOS - TURNO DA TARDE                              ")
                                                                           Escreval()
                                                                           EscrevaL("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                           Escreval()
                                                                           Escreval("--------------------------------------------------------------------------------------------")

                                                                           Para indice_relatorio de 1 até max_med Faça

                                                                              Se (turno_tarde_segunda[indice_relatorio] = 1) Então

                                                                                 Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                    Se (med_Cod[indice_relatorio] < 10) Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Se (med_Cod[indice_relatorio] < 100) Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senao

                                                                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Senão

                                                                                       Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                          Se med_Cod[indice_relatorio] < 10 Então

                                                                                             EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Se med_Cod[indice_relatorio] < 100 Então

                                                                                                EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Senão

                                                                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Fimse

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimpara


                                                                           Escreval("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("                         RELATÓRIO DE MÉDICOS - TURNO DA NOITE                              ")
                                                                           Escreval()
                                                                           EscrevaL("============================================================================================")
                                                                           Escreval()
                                                                           Escreval("REGISTRO   NOME              ESPECIALIDADE    TURNOS ESCALADOS")
                                                                           Escreval()
                                                                           Escreval("--------------------------------------------------------------------------------------------")

                                                                           Para indice_relatorio de 1 até max_med Faça

                                                                              Se (turno_noite[indice_relatorio] = 1) Então

                                                                                 Se (med_Espec[indice_relatorio] = "Clínico geral") Então

                                                                                    Se (med_Cod[indice_relatorio] < 10) Então

                                                                                       Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                       Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                    Senao

                                                                                       Se (med_Cod[indice_relatorio] < 100) Então

                                                                                          Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senao

                                                                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "       ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Senão

                                                                                    Se (med_Espec[indice_relatorio] = "Pediatra") Então

                                                                                       Se med_Cod[indice_relatorio] < 10 Então

                                                                                          Escreval("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                          Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                       Senão

                                                                                          Se med_Cod[indice_relatorio] < 100 Então

                                                                                             Escreval(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Escreval(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "            ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Senão

                                                                                       Se (med_Espec[indice_relatorio] = "Cirurgião") Então

                                                                                          Se med_Cod[indice_relatorio] < 10 Então

                                                                                             EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                             Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                          Senão

                                                                                             Se med_Cod[indice_relatorio] < 100 Então

                                                                                                EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Senão

                                                                                                EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                                                                                Escreval("                           ", med_Espec[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])

                                                                                             Fimse

                                                                                          Fimse

                                                                                       Fimse

                                                                                    Fimse

                                                                                 Fimse

                                                                              Fimse

                                                                           Fimpara

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
                                                            // FIM SE DAS VALIDAÇÕES DE TERÇA
                                                         Fimse

                                                      Fimse

                                                   Fimse
                                                   // FIM SE DAS VALIDAÇÕES DE QUARTA
                                                Fimse

                                             Fimse

                                          Fimse
                                          // FIM SE DAS VALIDAÇÕES DE QUINTA
                                       Fimse

                                    Fimse

                                 Fimse

                                 // FIM SE DAS VALIDAÇÕES DE SEXTA
                              Fimse

                           Fimse

                        Fimse


                        Escreval()
                        Escreval("APERTE [ENTER] PARA CONTINUAR")
                        Escreval()
                        Leia(continuar)
                        LimpaTela()

                     Fimenquanto

                  Fimse

               Senão

                  //SAINDO DO PROGRAMA

                  Se (opcao_menu = 6) Então

                     Escreval()
                     Escreval("===============================================")
                     Escreval()
                     Escreval("         **** SAINDO DO PROGRAMA! ****         ")
                     Escreval()
                     Escreval("===============================================")

                  Senão

                     //SE USUARIO DIGITOU OPCAO INVALIDA NO MENU PRINCIPAL

                     Escreval("==========================================")
                     Escreval()
                     Escreval("ERRO! OPÇÃO INVÁLIDA! Escolha entre 1 a 6!")
                     Escreval()
                     Escreval("==========================================")

                  Fimse

               Fimse

            Fimse
         Fimse

      Fimse

   FimEnquanto

Fimalgoritmo

