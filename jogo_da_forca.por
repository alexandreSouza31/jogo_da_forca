programa
{
    funcao inicio()
    {
	    cadeia nomePrograma ="jogo da Forca", versaoPrograma="1.0", letraAdivinhada
	    inteiro numeroErros=0
	    const inteiro numeroTentativas=5
	
	    cadeia palavraSecreta[7]
	    palavraSecreta[0]="l"
	    palavraSecreta[1]="a"
	    palavraSecreta[2]="r"
	    palavraSecreta[3]="a"
	    palavraSecreta[4]="n"
	    palavraSecreta[5]="j"
	    palavraSecreta[6]="a"
	
	    cadeia letraCorreta[7]
	    letraCorreta[0]="_"
	    letraCorreta[1]="_"
	    letraCorreta[2]="_"
	    letraCorreta[3]="_"
	    letraCorreta[4]="_"
	    letraCorreta[5]="_"
	    letraCorreta[6]="_"

	    logico deveContinuar=verdadeiro
	    escreva(nomePrograma+" "+versaoPrograma+"\n \n")
			
	    enquanto(deveContinuar){
	      escreva("Digite uma letra:")
	    
	      leia(letraAdivinhada)
	      limpa()
	
	      logico letraEncontrada=falso
	
	      escreva(nomePrograma+" "+versaoPrograma+"\n \n")
	
	      para(inteiro i=0;i<7;i++){
	        se(letraAdivinhada==palavraSecreta[i]){
	        escreva("Letra correta!"+"\t"+numeroErros+" erro(s)"+"! \n")
	          letraEncontrada=verdadeiro
	          letraCorreta[i]=letraAdivinhada
	        }
	      }
	        // se(palavraSecreta==letraAdivinhada){
	        //   escreva("voce venceu!")
	        // }
	
	      se(letraEncontrada==falso){
	        numeroErros++
	        numeroErros= numeroErros++
	          escreva("Letra incorreta!"+"\t"+numeroErros+" erro(s)"+"! \n")
	          // escreva("         o           
	          //                  \|/
	          //                   /\")
	      }
	
	      se(numeroErros>=numeroTentativas){
	        escreva("Game over! Você excedeu o número de tentativas("+numeroTentativas+")!")
	        retorne
	      }
	
	      inteiro j=0
	      enquanto(j<7){
	          escreva(letraCorreta[j]+"\t")
	          j++
	      }
	      escreva("\n \n")

	    }
			
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1806; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
