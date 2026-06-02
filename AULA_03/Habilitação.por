programa {
  funcao inicio() {
    
    inteiro ano_nascimento, ano_atual, idade

    escreva("Digite o ano de nascimento: ")
    leia(ano_nascimento)
    
    escreva("Digite o ano atual: ")
    leia(ano_atual)

    idade = ano_atual - ano_nascimento

    escreva("\nVocê completa ", idade, "anos em ", ano_atual )

    se (idade >= 18){
      escreva(" e poderá tirar a habilitação.")
    }

    senao {
      escreva(" e ainda não poderá tirar a habilitação.")

    }
  }
}
