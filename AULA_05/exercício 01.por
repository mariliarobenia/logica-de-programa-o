programa {
  funcao inicio() {

    inteiro contador, numero, positivos = 0, negativos = 0
    

    enquanto(numero != 0) {
      escreva("Digite um número: ")
      leia(numero)
      

      se (numero > 0){
      positivos = positivos + 1
      }
      se (numero < 0){
      negativos = negativos + 1
      }
    }
    
    escreva("Quantidade de números positivos: ", positivos, "\n")
    escreva("Quantidade de números negativos: ", negativos)

  }
}