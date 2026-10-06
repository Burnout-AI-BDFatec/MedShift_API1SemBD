Algoritmo "EscalaMedicos_2°sprint"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi

const

   max_med = 1

Var
   opcao_menu:inteiro
   pare: caractere


   //variaveis referentes ao cadastro de usuarios:
   med_Cod: vetor[1..max_med] de inteiro
   med_Nome: vetor [1..max_med] de caractere
   med_Espec: vetor [1..max_med] de caractere
   disp_manha: vetor [1..max_med] de caractere
   disp_tarde: vetor [1..max_med] de caractere
   disp_noite: vetor [1..max_med] de caractere
   i: inteiro
   id: inteiro
   opcao: inteiro
   btn_continuar: caractere



Inicio

   opcao_menu <- 0

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

         btn_continuar <- "s"
         enquanto (btn_continuar <> "n") e (btn_continuar <> "Não") e (btn_continuar <> "não") faca
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
                  med_Espec[i] <- "Pediatras"
               senao
                  se opcao = 3 entao
                     med_Espec[i] <- "Cirurgiões"
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
            

            escreval("Deseja continuar?: ")
            leia(btn_continuar)

            para id de 1 ate i faca
               escreval(med_Cod[id])
               escreval(med_Nome[id])
               escreval(med_Espec[id])
               escreval("Disponibilidade de manhã: ", disp_manha[id])
               escreval("Disponibilidade de tarde: ", disp_tarde[id])
               escreval("Disponibilidade de noite: ", disp_noite[id])
            fimpara
         fimenquanto
      Senao

         Se opcao_menu = 2 Entao

            Escreval("Consulta em desenvolvimento.")

         Senao
            Se opcao_menu = 3 Entao

               Escreval("Montagem de escala em desenvolvimento.")

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