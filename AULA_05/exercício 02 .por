programa {
  funcao inicio() {

    real pH
    enquanto(pH != -1){
      escreva("Digite o valor de pH: ")
      leia(pH)

      se (pH == -1){
      pare
      }
      se (pH > 7){
      escreva("Substância Ácida \n")
      }
      se (pH < 7){
      escreva("Substância Básica \n")
      }
      se (pH == 7){
      escreva("Substância Neutra \n")
      }
    }
  }
}