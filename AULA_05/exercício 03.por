programa {
  funcao inicio() {

    inteiro qtdRadio = 0, qtdTv = 0, qtdRevista = 0, qtdOutdoor = 0, valorTotal = 0
    inteiro radio, tv, revista, outdoor, horario
    cadeia tipoMidia, subTipo
    caracter continuar = 'S'

    enquanto(continuar == 'S' ou continuar == 's'){
      escreva("Qual o tipo de midia (radio/tv/revista/outdoor): ")
      leia(tipoMidia)

      se (tipoMidia == "radio" ou tipoMidia == "RADIO" ou tipoMidia == "Radio"){
        qtdRadio++
        escreva("Qual a faixa? (AM/PM): ")
        leia(subTipo)
        se (subTipo == "am"){
        valorTotal = valorTotal + 300
        }
        senao se (subTipo == "fm") {
        valorTotal = valorTotal + 500.00
        }
      }
      se (tipoMidia == "TV" ou tipoMidia == "Tv" ou tipoMidia == "tv"){
        qtdTv++
        escreva("Qual o horário? ")
        leia(horario)
        se (horario <= 20){
        valorTotal = valorTotal + 1200.00
        }
        senao se (horario > 20){
        valorTotal = valorTotal + 2000.00
        }
      }

      se (tipoMidia == "revista" ou tipoMidia == "Revista" ou tipoMidia == "REVISTA"){
        qtdRevista++
        valorTotal = valorTotal + 750.00
      }
      se (tipoMidia == "outdoor" ou tipoMidia == "Outdoor" ou tipoMidia == "OUTDOOR"){
        qtdOutdoor++
        valorTotal = valorTotal + 1500.00
      }
      
      escreva("Deseja cadastrar outro anuncio? S/N: ")
      leia(continuar)


    }

    escreva("\n-----------------------------------------")
    escreva("\nValor total arrecadado: R$ ", valorTotal, "\n")
    escreva("Anuncios de Radio: ", qtdRadio,"\n")
    escreva("Anuncios de Tv: ", qtdTv,"\n")
    escreva("Anuncios de Revista: ", qtdRevista,"\n")
    escreva("Anuncios de Outdoor: ", qtdOutdoor,"\n")

  }
}
