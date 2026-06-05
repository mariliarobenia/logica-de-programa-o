programa {
  inclua biblioteca Util -->util
  funcao inicio() {

    //Jogo da Adivinhação

    // - Melhoria: Exibir uma mensagem personalizada
    cadeia melhorJogador = ""
    inteiro melhorPontuacao = 101

    

    enquanto (verdadeiro){
      escreva("---------------------------------\n")
    escreva("Bem-vindo ao Jogo da Adivinhação!\n")
    escreva("---------------------------------\n")


    inteiro numeroSorteado = util.sorteia(1, 100)
    inteiro numeroTentativas = 0
    cadeia nomeJogador

    escreva("Qual o seu nome? ")
    leia (nomeJogador)

    escreva("Um número de 1 a 100 foi sorteado!\n")
    escreva("Tente adivinhar qual é! Boa sorte!\n\n")

      enquanto (verdadeiro){
      inteiro numeroDigitado

      escreva("Qual o seu palpite? ")
      leia(numeroDigitado)

      se (numeroDigitado < 1 ou numeroDigitado > 100) {
        escreva("Dê um palpite entre 1 e 100. Tente novamente.\n\n")
      }

      senao{
          numeroTentativas++

        se (numeroDigitado == numeroSorteado) {
          se (numeroTentativas <= 3){
          escreva("✅ Uau ! Você é um gênio da adivinhação! Número de tentativas: ", numeroTentativas, "\n")

          }
          senao se (numeroTentativas <= 6){
          escreva("✅ Muito bem você foi rápido! Número de tentativas: ", numeroTentativas, "\n")

          }
          senao {
          escreva("✅ Muito bem você foi rápido! Número de tentativas: ", numeroTentativas, "\n")
          }

          se (numeroTentativas < melhorPontuacao){
            melhorPontuacao = numeroTentativas
            melhorJogador = nomeJogador
            escreva("\n🏆 Novo record! Você obteve a melhor pontuação até agora.\n")
          }


          pare
        }

        se (numeroSorteado > numeroDigitado){
        escreva("❌ O número sorteado é MAIOR que ", numeroDigitado, ". \n\n")

        } senao {
        escreva("❌ O número sorteado é MENOR que ", numeroDigitado, ". \n\n")

        }
      }
    }

      

      cadeia novoJogo

      escreva("Deseja iniciar um novo jogo (S/N? ")
      leia(novoJogo)

      se (novoJogo == "nao" ou novoJogo == "NAO" ou novoJogo == "n" ou novoJogo == "N"){
        escreva("🏅 O melhor jogador foi, ", melhorJogador, " com ", melhorPontuacao, " tentativas.\n")
        pare
      }
    }
  }
}