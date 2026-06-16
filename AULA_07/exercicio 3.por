programa {
  // Sistema de Notas (sem função)
  funcao inicio() {
    cadeia nome
    real media, faltas

    escreva("Média: ")
    leia(media)
    escreva("Faltas: ")
    leia(faltas)

    escreva("\n--- Resultado ---\n")
    

    se (media >= 9.5 e faltas < 10) {
      escreva("Situação: APROVADO COM LOUVOR\n")
    } senao se (media >= 7 e faltas < 10) {
      escreva("Situação: APROVADO\n")
    }
    senao {
      escreva("Situação: Reprovado\n")
    }
  }
}
