Algoritmo "EscalaMedicos_2°sprint"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi

arquivo "cadastros_10.txt"

const

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

   //variaveis para consulta
   indice_relatorio: inteiro
   indice_encontrado: inteiro
   consulta_codigo: inteiro
   encontrado: logico


Inicio

   opcao_menu <- 0
   i <- 0

   Enquanto opcao_menu <> 4 Faca

      Escreval("========================================")
      Escreval("       MEDSHIFT - MENU PRINCIPAL")
      Escreval("========================================")
      Escreval("        1 - CADASTRAR MÉDICOS")
      Escreval("        2 - CONSULTAR CADASTROS")
      Escreval("        3 - MONTAR ESCALA")
      Escreval("        4 - ENCERRAR PROGRAMA")
      Escreval("________________________________________")
      Escreval("                                        ")
      Escreval("Escolha uma opção: ")
      Leia(opcao_menu)


      Se opcao_menu = 1 Entao

         i <- i + 1
         med_Cod[i] <- i

         escreval("Digite o nome do médico: ")
         leia(med_Nome[i])

         escreval("Digite a especialidade do médico: ")
         escreval("[1] - Clínico geral")
         escreval("[2] - Pediatra ")
         escreval("[3] - Cirurgião")
         leia(opcao)

         enquanto (opcao < 1) ou (opcao > 3) faca
            escreval("Opção inválida! Somente 1 até 3")
            escreval("Digite novamente: ")
            leia(opcao)
         fimenquanto

         se opcao = 1 entao
            med_Espec[i] <- "Clínico geral"
         senao
            se opcao = 2 entao
               med_Espec[i] <- "Pediatra"
            senao
               se opcao = 3 entao
                  med_Espec[i] <- "Cirurgião"
               fimse
            fimse
         fimse


         escreval("Tem disponibilidade de manhã: ")
         escreval("[1] Sim")
         escreval("[2] Não")
         leia(opcao)

         Enquanto (opcao < 1) ou (opcao > 2) faca
            escreval("Opção inválida! Digite novamente ")
            escreval("Digite novamente: ")
            leia(opcao)
         fimenquanto

         Se opcao = 1 entao
            disp_manha[i] <- "Sim"
         senao
            se opcao = 2 entao
               disp_manha[i] <- "Não"
            fimse
         fimse


         Escreval("Tem disponibilidade de tarde? ")
         escreval("[1] Sim")
         escreval("[2] Não")
         leia(opcao)

         Enquanto (opcao < 1) ou (opcao > 2) faca
            escreval("Opção inválida! Digite novamente ")
            escreval("Digite novamente: ")
            leia(opcao)
         fimenquanto

         Se opcao = 1 entao
            disp_tarde[i] <- "Sim"
         senao
            se opcao = 2 entao
               disp_tarde[i] <- "Não"
            fimse
         fimse


         escreval("Tem disponibildade de noite: ")
         escreval("[1] Sim")
         escreval("[2] Não")
         leia(opcao)

         Enquanto (opcao < 1) ou (opcao > 2) faca
            escreval("Opção inválida! Digite novamente ")
            escreval("Digite novamente: ")
            leia(opcao)
         fimenquanto

         Se opcao = 1 entao
            disp_noite[i] <- "Sim"
         senao
            se opcao = 2 entao
               disp_noite[i] <- "Não"
            fimse
         fimse


         para id de 1 ate i faca
            escreval(med_Cod[id])
            escreval(med_Nome[id])
            escreval(med_Espec[id])
            escreval("Disponibilidade de manhã: ", disp_manha[id])
            escreval("Disponibilidade de tarde: ", disp_tarde[id])
            escreval("Disponibilidade de noite: ", disp_noite[id])
         fimpara


      Senao

         Se opcao_menu = 2 Entao

            limpatela

            escreval("Digite o código a ser consultado")
            leia(consulta_codigo)

            limpatela
            // PROCURA O MÉDICO
            encontrado <- falso

            Para indice_relatorio de 1 ate max_med faca

               Se med_Cod[indice_relatorio] <> 0 entao

                  Se med_Cod[indice_relatorio] = consulta_codigo entao
                     encontrado <- verdadeiro
                     indice_encontrado <- indice_relatorio
                  FimSe

               FimSe

            FimPara

            Se encontrado = falso entao

               limpatela

               EscrevaL("============================================================================================")
               EscrevaL("                              MEDICO NAO CADASTRADO")
               EscrevaL("============================================================================================")
               EscrevaL("O codigo ", consulta_codigo, " nao esta cadastrado.")
               EscrevaL("============================================================================================")

            Senao

               Para indice_relatorio de 1 ate max_med faca

                  Se med_Cod[indice_relatorio] <> 0 entao

                     Se med_Cod[indice_relatorio] = consulta_codigo entao
                        encontrado <- verdadeiro
                        indice_encontrado <- indice_relatorio
                     FimSe

                  FimSe

               FimPara

               EscrevaL("============================================================================================")
               EscrevaL("                                    RELATORIO DE MEDICOS")
               EscrevaL("============================================================================================")
               EscrevaL("CODIGO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
               EscrevaL("--------------------------------------------------------------------------------------------")

               Para indice_relatorio de 1 ate max_med faca
                  // nao esvreve nada, pois o codigo é zero
                  se med_Cod[indice_relatorio] <> 0 entao
                     //PARA CONSULTAR CODIGO ESPECIFICO
                     se med_Cod[indice_relatorio] = consulta_codigo entao
                        Se med_Cod[indice_relatorio] < 10 entao
                           EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                           se   med_Espec[indice_relatorio] = "Clínico geral" entao
                              escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                           fimse
                           se   med_Espec[indice_relatorio] = "Pediatra" entao
                              escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                           fimse
                           se   med_Espec[indice_relatorio] = "Cirurgião" entao
                              escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                           fimse
                        Senao
                           Se med_Cod[indice_relatorio] < 100 entao
                              EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                              se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                 escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                              fimse
                              se   med_Espec[indice_relatorio] = "Pediatra" entao
                                 escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                              fimse
                              se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                 escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                              fimse
                           Senao
                              EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                              se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                 escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                              fimse
                              se   med_Espec[indice_relatorio] = "Pediatra" entao
                                 escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                              fimse
                              se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                 escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                              fimse
                           FimSe
                        FimSe
                     FimSe
                  fimse
               FimPara
               EscrevaL("============================================================================================")
            fimse
         Senao

            //MONTAGEM ESCALA
            Se opcao_menu = 3 Entao

               opcao_esc <- 0

               Limpatela()

               Enquanto (opcao_esc <> 4) Faça
                  Escreval("========================================")
                  Escreval("           MONTAR ESCALA")
                  Escreval("========================================")
                  Escreval("        1 - TURNO DA MANHÃ")
                  Escreval("        2 - TURNO DA TARDE")
                  Escreval("        3 - TURNO DA NOITE")
                  Escreval("        4 - SAIR")
                  Escreval("========================================")
                  Escreva("Escolha uma opção: ")
                  leia(opcao_esc)

                  Se opcao_esc = 1 Entao
                     button <- "n"
                     Enquanto (button = "n") OU (button = "N") Faça
                        registro_med <- 0
                        Enquanto (registro_med < 1) OU (registro_med > max_Med) Faça

                           Escreval("========================================")
                           Escreval("      TURNO DA MANHÃ - CLÍNICO GERAL    ")
                           Escreval("========================================")
                           Escreval()
                           //MOSTAR RELATORIOS DE MEDICOS DE CLINICOS GERAL
                           EscrevaL("============================================================================================")
                           EscrevaL("                                    RELATORIO DE MEDICOS")
                           EscrevaL("============================================================================================")
                           EscrevaL("CODIGO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                           EscrevaL("--------------------------------------------------------------------------------------------")

                           Para indice_relatorio de 1 ate max_med faca
                              // nao esvreve nada, pois o codigo é zero
                              se med_Cod[indice_relatorio] <> 0 entao
                                 //PARA CONSULTAR CODIGO ESPECIFICO
                                 se med_Espec[indice_relatorio] = "Clínico geral" entao
                                    Se med_Cod[indice_relatorio] < 10 entao
                                       EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                       se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                       se   med_Espec[indice_relatorio] = "Pediatra" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                       se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                    Senao
                                       Se med_Cod[indice_relatorio] < 100 entao
                                          EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Pediatra" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                       Senao
                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Pediatra" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                       FimSe
                                    FimSe
                                 FimSe
                              fimse
                           FimPara
                           EscrevaL("============================================================================================")


                           Escreva("Selecione o Médico: ")
                           leia(registro_med)

                           turno_manha[registro_med] <- turno_manha[registro_med] + 1

                           Se (registro_med < 1) OU (registro_med > max_Med) Entao
                              escreval("================================")
                              escreval("     Digite um Código Válido    ")
                              escreval("================================")
                              turno_manha[registro_med] <- turno_manha[registro_med] - 1
                           Senao

                              Se (registro_med <> med_Cod[registro_med]) Então
                                 escreval("================================")
                                 escreval("   Médico Sem Cadastro   ")
                                 escreval("================================")
                                 turno_manha[registro_med] <- turno_manha[registro_med] - 1
                              Senao

                                 Se (med_Espec[registro_med] <> "Clínico geral") Entao
                                    escreval("================================")
                                    escreval("Médico com especidalidade errada")
                                    escreval("================================")
                                    turno_manha[registro_med] <- turno_manha[registro_med] - 1
                                 Senao

                                    Se (disp_manha[registro_med] <> "Sim") Entao
                                       escreval("================================")
                                       escreval("   Médico Sem Disponibilidade   ")
                                       escreval("================================")
                                       turno_manha[registro_med] <- turno_manha[registro_med] - 1
                                    Fimse
                                 Fimse
                              Fimse
                           Fimse
                        Fimenquanto

                        Se (turno_manha[registro_med] + turno_tarde[registro_med] + turno_noite[registro_med] > 2) Entao
                           Escreval("ERRO: Quantidade Máxima de Plantão Ultrapassado.")
                           turno_manha[registro_med] <- turno_manha[registro_med] - 1
                        Fimse

                        registro_med <- 0
                        Enquanto (registro_med < 1) OU (registro_med > max_Med) Faça

                           Escreval("========================================")
                           Escreval("       TURNO DA MANHÃ - PEDIÁTRA        ")
                           Escreval("========================================")
                           Escreval()

                           //MOSTAR RELATORIOS DE MEDICOS DE PEDIATRAS
                           EscrevaL("============================================================================================")
                           EscrevaL("                                    RELATORIO DE MEDICOS")
                           EscrevaL("============================================================================================")
                           EscrevaL("CODIGO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                           EscrevaL("--------------------------------------------------------------------------------------------")

                           Para indice_relatorio de 1 ate max_med faca
                              // nao esvreve nada, pois o codigo é zero
                              se med_Cod[indice_relatorio] <> 0 entao
                                 se med_Espec[indice_relatorio] = "Pediatra" entao
                                    Se med_Cod[indice_relatorio] < 10 entao
                                       EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                       se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                       se   med_Espec[indice_relatorio] = "Pediatra" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                       se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                    Senao
                                       Se med_Cod[indice_relatorio] < 100 entao
                                          EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Pediatra" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                       Senao
                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Pediatra" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                       FimSe
                                    FimSe
                                 FimSe
                              fimse
                           FimPara
                           EscrevaL("============================================================================================")

                           Escreva("Selecione o Médico: ")
                           leia(registro_med)

                           turno_manha[registro_med] <- turno_manha[registro_med] + 1

                           Se (registro_med < 1) OU (registro_med > max_Med) Entao
                              escreval("================================")
                              escreval("     Digite um Código Válido    ")
                              escreval("================================")
                           Senao

                              Se (registro_med <> med_Cod[registro_med]) Então
                                 escreval("================================")
                                 escreval("   Médico Sem Cadastro   ")
                                 escreval("================================")
                                 turno_manha[registro_med] <- turno_manha[registro_med] - 1
                              Senao

                                 Se (med_Espec[registro_med] <> "Pediatra") Entao
                                    escreval("================================")
                                    escreval("Médico com especidalidade errada")
                                    escreval("================================")
                                    turno_manha[registro_med] <- turno_manha[registro_med] - 1
                                 Senao

                                    Se (disp_manha[registro_med] <> "Sim") Entao
                                       escreval("================================")
                                       escreval("   Médico Sem Disponibilidade   ")
                                       escreval("================================")
                                       turno_manha[registro_med] <- turno_manha[registro_med] - 1
                                    Fimse
                                 Fimse
                              Fimse
                           Fimse
                        Fimenquanto

                        Se (turno_manha[registro_med] + turno_tarde[registro_med] + turno_noite[registro_med] > 2) Entao
                           Escreval("ERRO: Quantidade Máxima de Plantão Ultrapassado.")
                           turno_manha[registro_med] <- turno_manha[registro_med] - 1
                        Fimse

                        registro_med <- 0
                        Enquanto (registro_med < 1) OU (registro_med > max_Med) Faça

                           Escreval("========================================")
                           Escreval("       TURNO DA MANHÃ - CIRURGIÃO       ")
                           Escreval("========================================")
                           Escreval()
                           //MOSTAR RELATORIOS DE MEDICOS DE CIRURGIÃO
                           EscrevaL("============================================================================================")
                           EscrevaL("                                    RELATORIO DE MEDICOS")
                           EscrevaL("============================================================================================")
                           EscrevaL("CODIGO   NOME              ESPECIALIDADE       MANHA    TARDE    NOITE    TURNOS ESCALADOS")
                           EscrevaL("--------------------------------------------------------------------------------------------")

                           Para indice_relatorio de 1 ate max_med faca
                              // nao esvreve nada, pois o codigo é zero
                              se med_Cod[indice_relatorio] <> 0 entao
                                 //PARA CONSULTAR CODIGO ESPECIFICO
                                 se med_Espec[indice_relatorio] = "Cirurgiãoupda" entao
                                    Se med_Cod[indice_relatorio] < 10 entao
                                       EscrevaL("  ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                       se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                       se   med_Espec[indice_relatorio] = "Pediatra" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                       se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                          escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                       fimse
                                    Senao
                                       Se med_Cod[indice_relatorio] < 100 entao
                                          EscrevaL(" ",med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Pediatra" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                       Senao
                                          EscrevaL(med_Cod[indice_relatorio], "      ", med_Nome[indice_relatorio])
                                          se   med_Espec[indice_relatorio] = "Clínico geral" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "       ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Pediatra" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "            ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                          se   med_Espec[indice_relatorio] = "Cirurgião" entao
                                             escreval("                           ", med_Espec[indice_relatorio], "           ", disp_manha[indice_relatorio], "      ", disp_tarde[indice_relatorio], "      ", disp_noite[indice_relatorio], "           ",qtd_turnos_escalados[indice_relatorio])
                                          fimse
                                       FimSe
                                    FimSe
                                 FimSe
                              fimse
                           FimPara
                           EscrevaL("============================================================================================")

                           Escreva("Selecione o Médico: ")
                           leia(registro_med)

                           turno_manha[registro_med] <- turno_manha[registro_med] + 1

                           Se (registro_med < 1) OU (registro_med > max_Med) Entao
                              escreval("================================")
                              escreval("     Digite um Código Válido    ")
                              escreval("================================")
                              turno_manha[registro_med] <- turno_manha[registro_med] - 1
                           Senao

                              Se (registro_med <> med_Cod[registro_med]) Então
                                 escreval("================================")
                                 escreval("   Médico Sem Cadastro   ")
                                 escreval("================================")
                                 turno_manha[registro_med] <- turno_manha[registro_med] - 1
                              Senao

                                 Se (med_Espec[registro_med] <> "Cirurgião") Entao
                                    escreval("================================")
                                    escreval("Médico com especidalidade errada")
                                    escreval("================================")
                                    turno_manha[registro_med] <- turno_manha[registro_med] - 1
                                 Senao

                                    Se (disp_manha[registro_med] <> "Sim") Entao
                                       escreval("================================")
                                       escreval("   Médico Sem Disponibilidade   ")
                                       escreval("================================")
                                       turno_manha[registro_med] <- turno_manha[registro_med] - 1
                                    Fimse
                                 Fimse
                              Fimse
                           Fimse
                        Fimenquanto

                        Se (turno_manha[registro_med] + turno_tarde[registro_med] + turno_noite[registro_med] > 2) Entao
                           Escreval("ERRO: Quantidade Máxima de Plantão Ultrapassado.")
                           turno_manha[registro_med] <- turno_manha[registro_med] - 1
                        Fimse

                        Escreval("Confirma o Cadastro do Turno da Manhã?")
                        Escreval("[S] SIM")
                        Escreval("[N] NÃO")
                        Escreva("Escolha uma Opção: ")
                        leia(button)

                        Enquanto (button <> "n") E (button <> "N") E (button <> "s") E (button <> "S") Faça
                           Escreval("OPÇÃO INVÁLIDA!")
                           Escreva("Digite Novamente: ")
                           leia(button)
                        Fimenquanto
                        Limpatela()

                     Fimenquanto

                  Senao
                     Se opcao_esc = 2 Entao

                     Senao
                        Se opcao_esc = 3 Entao


                        Senao
                           Se (opcao_esc = 4) Então
                              Limpatela()
                           Fimse
                        Fimse
                     Fimse
                  Fimse

                  Enquanto (opcao_esc < 1 ) OU (opcao_esc > 4) Faca
                     Escreva("OPÇÃO INVÁLIDA: Escolha Novamente: ")
                     leia(opcao_esc)
                  Fimenquanto
               Fimenquanto


            Senao
               Se opcao_menu = 4 Entao

                  Escreval("Programa encerrado.")

               Senao

                  Escreval("Opcao invalida! Digite de 1 a 4.")

               FimSe
            FimSe
         FimSe
      FimSe


      Se opcao_menu > 4 Entao
         Escreva("Digite qualquer texto e ENTER para voltar: ")
         Leia(pare)
         LimpaTela()
      FimSe

   FimEnquanto


Fimalgoritmo
