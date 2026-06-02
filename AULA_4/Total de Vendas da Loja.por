programa {
  funcao inicio() {

    inteiro qtdClientes
    real valorCompra, valorArrecadado

    escreva("Quantos clientes foram atendidos? ")
    leia(qtdClientes)

    valorArrecadado = 0
    

    para (inteiro contador = 1; contador <= qtdClientes; contador++){
      escreva("Digite o valor da compra do ", contador, " ° cliente: ")
      leia(valorCompra)
      valorArrecadado = valorArrecadado + valorCompra
    }

    escreva(" O total arrecadado pela loja foi: R$ ", valorArrecadado)
    
      


    

    
  }
}
