programa {
  funcao inicio() {
    //Variáveis

    cadeia nome
    real peso, altura, imc

    //dados entrada

    escreva("Nome: ")
    leia(nome)
    escreva("Peso (KG): ")
    leia(peso)
    escreva("Altura (M): ")
    leia(altura)

    imc = peso / (altura * altura)

    //dados saída

    escreva("\nNome: ", nome)
    escreva("\nSeu IMC é: ", imc)
  }
}
