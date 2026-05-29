programa {
  funcao inicio() {
    inteiro qtdNumeros

    escreva("quantos números você vai digitar? ")
    leia(qtdNumeros)
    inteiro soma = 0

    para (inteiro contador = 1; contador <= qtdNumeros; contador++){
      
      inteiro numero 

      escreva("Digite o ", contador, "° número: ")
      leia(numero)

      soma = soma + numero
    }
    
    escreva("A soma dos números digitados é ", soma)
    
    
  }
}
