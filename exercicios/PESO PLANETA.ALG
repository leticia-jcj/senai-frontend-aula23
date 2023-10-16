algoritmo "peso planeta"

var
   planeta: inteiro
   pesoTerra,pesoPlaneta: real
   nomePlaneta: caractere
inicio
   escreval("-- SEU PESO EM OUTROS PLANETAS --")
   escreval("                                 ")
   escreval("           [1]  Mercurio         ")
   escreval("           [2]  Venus            ")
   escreval("           [3]  Marte            ")
   escreval("           [4]  Jupiter          ")
   escreval("           [5]  Saturno          ")
   escreval("           [6]  Urano            ")
   escreval("                                 ")
   escreva("Escolha um planeta: ")
   leia(planeta)

   se(planeta < 1) ou (planeta > 6) entao
      escreva("Opção invalida")
   senao

      escreva("Seu peso: ")
      leia(pesoTerra)
      
      escolha(planeta)
      caso 1
         pesoPlaneta<- pesoTerra / 10 * 0.37
         nomePlaneta<- "Mercurio"

      caso 2
         pesoPlaneta <- pesoTerra / 10 * 0.88
         nomePlaneta<- "Venus"

      caso 3
         pesoPlaneta <- pesoTerra / 10 * 0.38
         nomePlaneta<- "Marte"
         
      caso 4
         pesoPlaneta<- pesoTerra / 10 * 2.64
         nomePlaneta<- "Jupiter"
         
      caso 5
         pesoPlaneta <- pesoTerra / 10 * 1.15
         nomePlaneta<- "Saturno"
         
      caso 6
         pesoPlaneta <- pesoTerra / 10 * 1.17
         nomePlaneta<- "Urano"

      outrocaso
         pesoPlaneta<-0

      fimescolha

      se(pesoPlaneta = 0) entao
         escreva("Opção invalida")
      senao
         escreva("O seu peso no planeta ",nomePlaneta," é: ", pesoPlaneta, "Kg")
      fimse
   fimse
fimalgoritmo