programa {
  //tipos de função
    // - Sem parâmetro e com retorno
  inclua biblioteca Util --> util
  funcao inicio() {
    inteiro numeroSorteado = sortearNumero()
    escreva(numeroSorteado)
    
  }
  funcao inteiro sortearNumero(){
    inteiro numero = util.sorteia(1, 100)
    retorne numero

  }
}
