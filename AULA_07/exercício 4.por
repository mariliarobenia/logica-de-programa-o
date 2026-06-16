programa {
  funcao inicio() { 

    inteiro ano

    escreva("Digite um ano: ")
    leia(ano)

    se (ehBissexto(ano)){
      escreva("O ano", ano, " é bissexto.")
    }
    senao {
      escreva("O ano", ano, " não é bissexto.")
    }
  } // chave final da função inicio
  
  funcao logico ehBissexto(inteiro ano){
      
    se ((ano mod 4 == 0) e (ano mod 100 <> 0) ou (ano mod 400 == 0)){
    retorne (verdadeiro)
    }
    senao {
      retorne (falso)
    } 
  }

} // chave final do programa

