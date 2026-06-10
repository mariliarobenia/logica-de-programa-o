programa {
  //tipos de função
    // - Com parâmetro e sem retorno
  funcao inicio() {

    classificacaoAlunos()
    
  }

  funcao classificacaoalunos(real media, inteiro faltas){
    se (media >= 9.5 e faltas <= 10) {
      escreva("✅ APROVADO COM LOUVOR.\n")
    } senao se (media >= 7 e faltas <= 10) {
      escreva("✅ APROVADO.\n") 
    } senao {
      escreva("REPROVADO\n") 
    }
  }
  
}
