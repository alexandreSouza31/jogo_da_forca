programa
{
	funcao inicio()
	{
	cadeia nomePrograma ="jogo da Forca", versaoPrograma="2.0", letraDigitada
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
	
	    logico jogadorVenceu=falso
	    escreva(nomePrograma+" "+versaoPrograma+"\n \n")
		
	    enquanto(jogadorVenceu==falso e numeroErros<numeroTentativas){
	      escreva("Digite uma letra:")
	    
	      leia(letraDigitada)
	      limpa()
	
	      logico letraEncontrada=falso
	
	      escreva(nomePrograma+" "+versaoPrograma+"\n \n")
	
	      para(inteiro i=0;i<7;i++){
	        se(letraDigitada==palavraSecreta[i]){
	          letraEncontrada=verdadeiro
	          letraCorreta[i]=letraDigitada
	        }
	      }

	      se(letraEncontrada==verdadeiro){
	      	escreva("Letra correta!"+"\t")
	        escreva(numeroErros+" erro(s)"+"! \n")
	        limpa()
	      }
	
	
	      se(letraEncontrada==falso){
	        numeroErros++
	        //numeroErros= numeroErros++
	          escreva("Letra incorreta!"+"\t"+numeroErros+" erro(s)"+"! \n \n")
	          // escreva("         o           
	          //                  \|/
	          //                  /\")
	      }
	
	      jogadorVenceu=verdadeiro
	      para(inteiro i=0;i<7;i++){
	        se(letraCorreta[i]=="_"){
	          jogadorVenceu=falso
	        }
	      }

	      se(jogadorVenceu==verdadeiro){
	        escreva("Parabéns, você venceu! \t ERROS TOTAIS:"+numeroErros+"\n")
	      }
	
	      se(numeroErros>=numeroTentativas){
	        escreva("Game over! Você excedeu o número de tentativas("+numeroTentativas+")! \n")
	
		   cadeia palavraSecretaEmTexto=""	
	
		   para(inteiro i=0;i<7;i++){
		   	palavraSecretaEmTexto+=palavraSecreta[i]
		   }
	        
	        escreva("A palavra secreta era: "+palavraSecretaEmTexto+"!")
	        //escreva("         o ")          
	        //escreva("        \|/")
	        //escreva("        /\ ")
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
