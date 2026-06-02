programa {
  funcao inicio() {
    real peso, altura, imc

    escreva("Digite seu peso: ")
    leia(peso)

    escreva("Digite sua altura: ")
    leia(altura)

    imc = peso / (altura * altura)

    escreva("\nSeu imc é: ", imc, "\n")

    se (imc < 18.5){
      escreva("Abaixo do peso")
    }
    senao se (imc >= 18.5 e imc <= 24.9){
      escreva("Peso normal")
    }
    senao se (imc >= 25 e imc <= 29.9){
      escreva("Sobrepeso")
    }
    senao se (imc >= 30 e imc <= 34.9){
      escreva("Obesidade de grau 1 ")
    }
    senao se (imc >= 35 e imc >= 39.9){
      escreva("Obesidade de grau 2")
    }
    senao{
      escreva("Obesidade de grau 3")
    }
    }
    }
  }
}
