programa {
  funcao inicio() {
    // Exemplo: Avalie a situação de N alunos

    inteiro quantidade_alunos

    escreva("Você quer avaliar a situação de quantos alunos? ")
    leia(quantidade_alunos)

    para (inteiro contador = 1; contador <= quantidade_alunos; contador ++) {
      real media

    escreva("\nDigite a média do ", contador, "° aluno: ")
    leia(media)
    
    se (media >= 6){
      escreva("Aprovado\n")
    }
    senao {
      escreva("Repovado\n")
    }}
    

  }
}

