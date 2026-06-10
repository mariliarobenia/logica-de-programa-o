programa {
  funcao inicio() {
    real base, altura, areaRetangulo

    escreva("Digite a base do retângulo: ")
    leia(base)

    escreva("Digite a altura do retângulo: ")
    leia(altura)

    areaRetangulo = calcularAreaRetangulo(base, altura)

    escreva("Área do retângulo: ", areaRetangulo)


  }

  funcao real calcularAreaRetangulo(real base, real altura){
    real areaRetangulo = base * altura

    retorne areaRetangulo
  }
}
