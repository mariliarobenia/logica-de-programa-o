programa {
  inclua biblioteca Util -->util

    cadeia melhorJogadorFacil = ""
    inteiro melhorPontuacaoFacil = 101

    cadeia melhorJogadorMedia = ""
    inteiro melhorPontuacaoMedia = 1001

    cadeia melhorJogadorDificil = ""
    inteiro melhorPontuacaoDificil = 100001

    //Fácil; 1 a 100
    //Médio: 1 a 1000
    //Difícil: 1 a 10000

  funcao inicio() {
    enquanto (verdadeiro) {
      mensagemBoasVindas()
      
      inteiro nivel = escolherDificuladade()

      inteiro intervalo = definirIntervalo(nivel)

      inteiro numeroSorteado = sortearNumero(intervalo)
      inteiro numeroTentativas = 0
      cadeia nomeJogador

      escreva("Qual o seu nome ? ")
      leia(nomeJogador)

      escreva("\nOlá, ", nomeJogador, "! Preparando o jogo")

      atraso()

      mensagemInicio(intervalo)

      enquanto (verdadeiro) {
        inteiro numeroDigitado

        escreva("Qual o seu palpite ? ")
        leia(numeroDigitado)

        se (numeroDigitado < 1 ou numeroDigitado > intervalo) {
          escreva("⚠️ Dê um palpite entre 1 e ",intervalo, ". Tente novamente!\n\n")
        } senao {
          numeroTentativas++

          se (numeroDigitado == numeroSorteado) {
            mensagemPersonalizada(numeroTentativas)
            atualizarMelhorJogador(nivel, nomeJogador, numeroTentativas)
            pare
          }

          exibirdica(numeroDigitado, numeroSorteado)
        }
      }

      cadeia novoJogo = iniciarNovoJogo()

      se (novoJogo == "nao" ou novoJogo == "NAO" ou novoJogo == "n" ou novoJogo == "N") {
        exibirPlacarFinal()
        pare
      }
    }
  }
  funcao mensagemBoasVindas(){
    escreva("---------------------------------\n")
    escreva("Bem-vindo ao Jogo da Adivinhação!\n")
    escreva("---------------------------------\n\n")
  }

  funcao inteiro sortearNumero(inteiro intervalo){
    retorne util.sorteia(1, intervalo)
  }

  funcao atraso(){
    util.aguarde(1000)
    escreva(".")
    util.aguarde(1000)
    escreva(".")
    util.aguarde(1000)
    escreva(".\n\n")
    util.aguarde(1000)
  }

  funcao mensagemInicio(inteiro intervalo){
    escreva("Um número de 1 a ", intervalo, " foi sorteado!\n")
    escreva("Tente adivinhar qual é! Boa sorte!\n\n")
  }

  funcao mensagemPersonalizada(inteiro numeroTentativas){
    se (numeroTentativas <= 3) {
      escreva("✅ Uau! Você é um gêneio da adivinhação! Número de Tentativas: ", numeroTentativas, ".\n")
    } senao se (numeroTentativas <= 6) {
      escreva("✅ Muite bem! Você foi rápido! Número de Tentativas: ", numeroTentativas, ".\n") 
    } senao {
      escreva("✅ Conseguiu! Persitência é tudo! Número de Tentativas: ", numeroTentativas, ".\n") 
    }
  }

  funcao atualizarMelhorJogador(inteiro nivel, cadeia nomeJogador, inteiro numeroTentativas){
    se (nivel == 1){
      se (numeroTentativas < melhorPontuacaoFacil) {
        melhorPontuacaoFacil = numeroTentativas
        melhorJogadorFacil = nomeJogador
        escreva("\n🏆 Novo recorde! Você obteve a melhor pontuação até agora.\n")
      }
    } senao se (nivel == 2){
      se (numeroTentativas < melhorPontuacaoMedia) {
        melhorPontuacaoMedia = numeroTentativas
        melhorJogadorMedia = nomeJogador
        escreva("\n🏆 Novo recorde! Você obteve a melhor pontuação até agora.\n")
      }
    } senao {
      se (numeroTentativas < melhorPontuacaoDificil) {
        melhorPontuacaoDificil = numeroTentativas
        melhorJogadorDificil = nomeJogador
        escreva("\n🏆 Novo recorde! Você obteve a melhor pontuação até agora.\n")
      }
    } 
  }
      

  funcao exibirdica(inteiro numeroDigitado, inteiro numeroSorteado){
    se (numeroSorteado > numeroDigitado) {
      escreva("❌ O número sorteado é MAIOR que ", numeroDigitado, ".\n\n")
    } senao {
      escreva("❌ O número sorteado é MENOR que ", numeroDigitado, ".\n\n")
    }

  }

  funcao cadeia iniciarNovoJogo(){
    cadeia novoJogo
    escreva("\nDeseja iniciar um novo jogo (sim/nao) ? ")
    leia(novoJogo)
    limpa()

    retorne novoJogo
  }

  funcao inteiro escolherDificuladade(){
    inteiro nivel

    escreva("1  - Fácil (1 a 100).\n")
    escreva("2  - Médio (1 a 1000).\n")
    escreva("3  - Difícil (1 a 10000).\n")


    escreva("Escolha o nível de dificuldade: ")
    leia (nivel)
      
    retorne nivel
  }

  funcao inteiro definirIntervalo(inteiro nivel){
    inteiro intervalo
      
    escolha(nivel){
      caso 1: 
        intervalo = 100
        pare 
      caso 2: 
        intervalo = 1000
        pare
      caso 3:
        intervalo = 10000
        pare
      caso contrario: 
        intervalo = 100
        escreva("\n Opção inválida. A dificuldade foi definida para 'fácil'.\n")
    }

      retorne intervalo
  }

  funcao exibirPlacarFinal() {
    escreva("\n========= Placar final ==========\n")
    se (melhorJogadorFacil != ""){
      escreva("\n🏅 O melhor jogador foi ", melhorJogadorFacil, " com ", melhorPontuacaoFacil, " tentativas.\n")
    }
    se (melhorJogadorMedia != ""){
      escreva("\n🏅 O melhor jogador foi ", melhorJogadorMedia, " com ", melhorPontuacaoMedia, " tentativas.\n")
    }
    se (melhorJogadorDificil != ""){
      escreva("\n🏅 O melhor jogador foi ", melhorJogadorDificil, " com ", melhorPontuacaoDificil, " tentativas.\n")
    }
  }
}
