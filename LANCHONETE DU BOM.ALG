algoritmo "LANCHONETE BOMBAS"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

var
   lanche: caractere
   pedido,qtd,pagamento: inteiro
   xBrocado, batata, valor:real
   troco, dinheiro, xBomba, xSalada, xTudoFrango: real


inicio

   xBomba <- 10
   xSalada <- 5
   xTudoFrango<- 15
   xBrocado<- 20
   batata<- 17

   escreval("-------------LANCHONETE BOMBAS-----------")
   escreval("                            ")
   escreval("  Código  |    Descrição    |    Preços  ")
   escreval("-----------------------------------------")
   escreval("   10     | X-Bomba...............R$10,00")
   escreval("   20     | X-Salada...............R$5,00")
   escreval("   30     | X-Tudo de frango.........R$15")
   escreval("   40     | X-Brocado................R$20")
   escreval("   50     | Batata Frita.............R$17")
   escreval("-----------------------------------------")

   escreva("Digite o CÓDIGO do pedido: ")
   leia(pedido)

   se(pedido <> 10) e (pedido <> 20) e (pedido <> 30) e (pedido <> 40) e (pedido <>50) entao
      escreva("Opção invalido")

   senao
      escreva("Quantidade: ")
      leia(qtd)

      escolha(pedido)
      caso 10
         valor<- qtd * xbomba
         lanche<- "X-Bomba"

      caso 20
         valor<- qtd * xSalada
         lanche<- "X-Salada"

      caso 30
         valor <- qtd * xTudoFrango
         lanche<- "X-Tudo de frango"

      caso 40
         valor<- qtd * xBrocado
         lanche<- "X-Brocado"

      caso 50
         valor<- qtd * batata
         lanche<- "Batata-frita"

      outrocaso
         valor<-0
         lanche<- ""

      fimescolha

      limpatela

      se(valor > 0) entao
         escreval("---Resumo do pedido---")
         escreval("Lanche: ",lanche)
         escreval("Quantidade: ",qtd)
         escreval("Valor total: ", valor)
         escreval()
         escreval("Forma de pagamento: ")
         escreval("1 - PIX")
         escreval("2 - Debito")
         escreval("3 - Credito")

         escreval("4 - Dinheiro")
         leia(pagamento)

         escolha(pagamento)
         caso 1
            escreval("QR CODE")
            escreval("|||||||||||||||")
            escreval("|||||||||||||||")
            escreval("|||||||||||||||")
            timer(2000)
            escreval("Valor de ",valor," pago com suceso! Obrigado e volte sempre!")

         caso 2
            escreva("Insira ou aproxime o cartão: ")
            timer(2000)
            escreval("Valor de ",valor," pago com sucesso!")

         caso 3
            escreva("Insira ou aproxime o cartão: ")
            timer(1000)
            escreval("Valor de ",valor," pago com sucesso!")

         caso 4
            escreval("Valor total: R$",valor)
            escreval("Dinheiro: ")
            leia(dinheiro)


            se(dinheiro < valor) entao
               escreval("Valor insuficiente! Coça os bolsos!")

            senao
               se (dinheiro > valor) entao
                  troco<- dinheiro - valor
                  escreval("Valor de ",valor," pago com sucesso")
                  escreval("Troco: R$",troco)

               senao
                  escreval("Valor de ",valor," pago com sucesso")
               fimse
            fimse

         outrocaso
            escreva("Forma de pagamento invalida")
         fimescolha

      senao
         escreva("Pedido invalido!")
      fimse
   fimse

fimalgoritmo