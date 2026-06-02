programa {
  funcao inicio() {

    //variáveis

    cadeia nome
    inteiro qtdpessoas, idade

    escreva("Quantas pessoas deseja analisar? ")
        leia(qtdpessoas)

    para (inteiro contador = 1; contador <= qtdpessoas; contador++){

      escreva("Digite o nome da ", contador, "ª pessoa? ")
        leia(nome)
      
      escreva("Digite a idade de ", nome, ": ")
        leia(idade)

      se (idade >= 18)
        
        escreva(nome, " Você pode tirar CNH. \n\n")
      
      senao

        escreva(nome, " Você não pode tirar CNH. \n\n")

      }
    }
}
