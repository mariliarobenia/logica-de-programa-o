programa {
  funcao inicio() {

    cadeia nome
    inteiro idade

    escreva("Qual o seu nome? ")
    leia(nome)

    escreva("Qual a sua idade? ")
    leia(idade)

    se (idade < 16 ){
      escreva(nome, ", sua classificação eleitoral é: nao eleitor")
    }
    senao se (idade >=16 e idade < 18){
      escreva(nome, ", sua classificação eleitoral é: eleitor facultativo")
    }
    senao se (idade >= 18 e idade < 65){
      escreva(nome, ", sua classificação eleitoral é: eleitor obrigatorio")
    }
    senao {
      escreva(nome, ", sua classificação eleitoral é: eleitor facultativo")
    }

  }
}
