programa {
  funcao inicio() {
    //Variáveis 
    real angulo1, angulo2, angulo3

    //Entrada de dados

    escreva("Digite o primeiro angulo: ")
    leia(angulo1)
    escreva("Digite o segundo angulo: ")
    leia(angulo2)

    angulo3 = 180 - (angulo1 + angulo2)

    //Saída de dados

    escreva("\n O terceiro ângulo do triângulo é: ", angulo3, " graus " )

    
  }
}
