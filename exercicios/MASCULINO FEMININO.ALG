algoritmo "masculino feminino"
// 1. Elabore um algoritmo que leia do teclado o sexo
// de uma pessoa. Se o sexo digitado for M escreva sexo
// masculino, se for F escreva sexo feminino;
var
   sexoF, sexoM: caracter
   codigo: inteiro
inicio

   sexoF <- "Feminino"
   sexoM <- "Masculino"

   escreval("-------- SEXO --------")
   escreval("                      ")
   escreval("  C�digo | Descri��o  ")
   escreval("----------------------")
   escreval("  - 1 -  | Feminino   ")
   escreval("  - 2 -  | Maculino   ")
   escreval("----------------------")

   escreva("Digite o c�digo do sexo: ")
   leia(codigo)

   escolha(codigo)
   caso 1
      escreva("Voc� escolheu o sexo ", sexoF)

   caso 2
      escreva("Voc� escolheu o sexo ", sexoM)

   outrocaso
      escreva("C�digo inv�ligo!")
   fimescolha
fimalgoritmo
