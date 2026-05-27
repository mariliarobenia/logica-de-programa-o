programa {
  funcao inicio() {
    
    inteiro numero

    escreva("Digite um número: ")
    leia(numero)

    se (numero == 0) {
      escreva("o número é zero!\n")
    }
    senao{
      se (numero > 0){
        escreva(numero, " é positivo!\n")
      }
      senao {
        escreva(numero, " é negativo!")
      }
    }
  }
}
