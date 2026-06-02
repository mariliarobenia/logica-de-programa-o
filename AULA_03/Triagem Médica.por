programa {
  funcao inicio() {

    real temperatura
    caracter  secrecao, tosse, dor_no_corpo
    

    escreva("Qual a sua temperatura?")
    leia(temperatura)

    escreva("Você tem secreção?")
    leia(secrecao)
    
    escreva("Você tem tosse?")
    leia(tosse)

    escreva("Você tem dor no corpo?")
    leia(dor_no_corpo)

    se ((secrecao != 'S' e secrecao != 'N') ou
    (tosse != 'S' e tosse != 'N') ou
    (dor_no_corpo != 'S' e dor_no_corpo != 'N')){
      escreva("Erro!")
    }
    

    se (secrecao == 'S' ou tosse == 'S' ou dor_no_corpo == 'S')
    {
      se (temperatura >= 37){
        escreva("Exames especiais.")
      }
      senao {
        escreva("Exames básicos.")
      }
    }
    senao {
      se (temperatura >= 37){
        escreva("Exames básicos.")
      }
      senao { 
        escreva("Liberado.")
      }
    }
    }
  }
}
