programa {
  funcao inicio() {

    // 1 para soma
    // 2 para subtração
    // 3 para multiplicação
    // 4 para divisão

    inteiro numero1, numero2, opcao
    real resultado
    

    escreva("Digite o primeiro número: ")
    leia(numero1)

    escreva("Digite o segundo número: ")
    leia(numero2)

    escreva("\nEscolha a operação:\n")
        escreva("1 - Soma\n")
        escreva("2 - Subtração\n")
        escreva("3 - Multiplicação\n")
        escreva("4 - Divisão\n")
        escreva("Opção: ")
        leia(opcao)

    escolha(opcao){
      caso 1:
      resultado = numero1 + numero2
      escreva("Resultado da soma: ", resultado)
      pare

      caso 2:
      resultado = numero1 - numero2
      escreva("Resultado da subtração: ", resultado)
      pare

      caso 3:
      resultado = numero1 * numero2
      escreva("Resultado da multiplicação: ", resultado)
      pare

      caso 4:
      se (numero2 != 0){
        resultado = numero1 / numero2
        escreva("Resultado da divisão: ", resultado)
      }
      senao {
        escreva("Erro: divisão por zero!")
      }
      pare

      caso contrario:
      escreva("Opção  inválida!")
    }
  }
}
