algoritmo "salario professor horaAula"
// A escola “APRENDER” faz o pagamento de seus professores por
// hora/aula. Faça um algoritmo que calcule e exiba o salário
// de um professor. Sabe-se que o valor da hora/aula segue a
// tabela abaixo: Professor Nível 1 R$12,00 por hora/aula
// Professor Nível 2 R$17,00 por hora/aula Professor Nível
// 3 R$25,00 por hora/aula
var
   nivel1, nivel2, nivel3, salario: real
   nivelProfessor, horaAula: inteiro

inicio
   escreval("--- ESCOLA APRENDER ---")
   escreval("                       ")
   escreval("   NIVEL | HORA/AULA   ")
   escreval("-----------------------")
   escreval("     1   |  R$12,00    ")
   escreval("     2   |  R$17,00    ")
   escreval("     3   |  R$25,00    ")
   escreval("-----------------------")

   nivel1 <- 12
   nivel2 <- 17
   nivel3 <- 25

   escreva("Digite o nível do professor: ")
   leia(nivelProfessor)

   escreva("Digite a  quantidade de hora/aula: ")
   leia(horaAula)

   escolha(nivelProfessor)
   caso 1
      salario <-  nivel1 * horaAula
      escreva("Salário a receber: R$", salario)

   caso 2
      salario <-  nivel2 * horaAula
      escreva("Salário a receber: R$", salario)

   caso 3
      salario <-  nivel3 * horaAula
      escreva("Salário a receber: R$", salario)

   outrocaso
      escreva("Nível inválido!")

   fimescolha
fimalgoritmo
