algoritmo "cardapio lanchonete"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// 3. O cardápio de uma lanchonete é o seguinte:
// Especificação Preço unitário
// 100 Cachorro quente 1,10
// 101 Bauru simples   1,30
// 102 Bauru c/ovo     1,50
// 103 Hamburger       1,10
// 104 Cheeseburger    1,30
// 105 Refrigerante    1,00
// Escrever um algoritmo que leia o código do item pedido,
// a quantidade e calcule o valor
// a ser pago por aquele lanche.
// Considere que a cada execução somente será
// calculado um item.
var
   cachorroQuente, bauruSimples, bauruOvo: real
   hamburger, cheeseburger, refrigerante: real
   valor, dinheiro, troco: real
   codigoLanche, qtd, pagamento: inteiro
   lanche: caracter
inicio

   cachorroQuente <- 1.10
   bauruSimples <- 1.30
   bauruOvo <- 1.10
   hamburger <- 1.50
   cheeseburger <- 1.30
   refrigerante <- 1.00


   escreval("------------------  CARDÁPIO  -----------------")
   escreval("                            ")
   escreval("  Código  |       Descrição       |    Preços  ")
   escreval("-----------------------------------------------")
   escreval("   100    | Cachorro Quente............R$1,10  ")
   escreval("   101    | Bauru Simples..............R$1,30  ")
   escreval("   102    | Bauru c/ovo................R$1,50  ")
   escreval("   103    | Hamburger..................R$1,10  ")
   escreval("   104    | Cheeseburger...............R$1,30  ")
   escreval("   105    | Refrigerante...............R$1,00  ")
   escreval("-----------------------------------------------")

   escreva("Digite o codigo do lanche: ")
   leia(codigoLanche)

   se(codigoLanche < 100) ou (codigoLanche > 105) entao
      escreva("Opção invalida!")

   senao
      escreva("Quantidade: ")
      leia(qtd)

      escolha(codigoLanche)
      caso 100
         valor<- qtd * cachorroQuente
         lanche<- "Cachorro Quente"

      caso 101
         valor<- qtd * bauruSimples
         lanche<- "Bauru Simples"

      caso 102
         valor <- qtd * bauruOvo
         lanche<- "Bauru c/ovo"

      caso 103
         valor<- qtd * hamburger
         lanche<- "Hamburger"

      caso 104
         valor<- qtd * cheeseburger
         lanche<- "Cheeseburger"
         
      caso 105
         valor<- qtd * refrigerante
         lanche<- "Refrigerante"

      outrocaso
         valor<-0
         lanche<- ""

      fimescolha

      limpatela

      se(valor > 0) entao
         escreval("----- RESUMO DO PEDIDO ------")
         escreval("Lanche.......................",lanche)
         escreval("Quantidade..................",qtd)
         escreval("Valor total..................","R$",valor)
         escreval("                           ")
         escreval("-- FORMA DE PAGAMENTO --")
         escreval("      - 1 - PIX         ")
         escreval("      - 2 - DÉBITO      ")
         escreval("      - 3 - CRÉDITO     ")
         escreval("      - 4 - DINHEIRO    ")
         leia(pagamento)

         escolha(pagamento)
         caso 1
            escreval("     QR-CODE   ")
            escreval("|||||||||||||||")
            escreval("|||||||||||||||")
            escreval("|||||||||||||||")
            escreval("|||||||||||||||")
            escreval("               ")
            timer(2000)
            escreval("Valor de R$",valor," pago com suceso!")
            escreval("                                     ")
            escreval("     Agradecemos a preferência.    ")

         caso 2
            escreval("Insira ou aproxime o cartão: ")
            timer(2000)
            escreval("Valor de R$",valor," pago com suceso!")
            escreval("                                     ")
            escreval("     Agradecemos a preferência.    ")

         caso 3
            escreval("Insira ou aproxime o cartão: ")
            timer(1000)
            escreval("Valor de R$",valor," pago com suceso!")
            escreval("                                     ")
            escreval("     Agradecemos a preferência.    ")

         caso 4
            escreval("Valor total a pagar: R$",valor)
            escreva("Dinheiro: ")
            leia(dinheiro)


            se(dinheiro < valor) entao
               escreval("Valor insuficiente!")

            senao
               se (dinheiro > valor) entao
                  troco<- dinheiro - valor
                  escreval("Valor de ",valor," pago com sucesso!")
                  escreval("Troco: R$",troco)
                  escreval("                                    ")
                  escreval("     Agradecemos a preferência.     ")

               senao
                  escreval("Valor de ",valor," pago com sucesso!")
                  escreval("                                    ")
                  escreval("     Agradecemos a preferência.     ")
               fimse
            fimse

         outrocaso
            escreva("Forma de pagamento inválida!")
         fimescolha

      senao
         escreva("Pedido inválido!")
      fimse
   fimse

fimalgoritmo