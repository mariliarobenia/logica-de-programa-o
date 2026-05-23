programa {
  funcao inicio() {
    //variáveis

    real valordoproduto
    real valorcomdesconto
    real valordaparcela
    real comissaovendedoravista
    real comissaovendedorparcelado

    //dados de entrada

    escreva("Digite o valor do produto: R$ ")
    leia(valordoproduto)

    valorcomdesconto = valordoproduto - (valordoproduto * 0.10)

    valordaparcela = valordoproduto / 3

    comissaovendedoravista = valorcomdesconto * 0.05
    
    comissaovendedorparcelado = valordoproduto * 0.05

    //dados de saida

    escreva("\n Valor com 10% de desconto: R$ ", valorcomdesconto)

    escreva("\n Valor de cada parcela (3x sem juros): R$ ", valordaparcela)

    escreva("\n Comissão do vendedor (à vista): R$ ", comissaovendedoravista)

    escreva("\n Comissão do vendedor (parcelado): R$ ", comissaovendedorparcelado)
    
  }
}
