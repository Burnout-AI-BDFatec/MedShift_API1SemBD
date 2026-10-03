Algoritmo "EscalaMedicos_2°sprint"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 03/10/2026
Var
opcao_menu:inteiro
pare: caractere



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

         // Coloque aqui seu codigo atual.
         // Nao repita Var, Inicio ou Fimalgoritmo.

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

      Se opcao_menu <> 4 Entao
         Escreva("Digite qualquer texto e ENTER para voltar: ")
         Leia(pare)
         LimpaTela()
      FimSe

   FimEnquanto


Fimalgoritmo