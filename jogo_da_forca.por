programa
{
  inclua biblioteca Util
  inclua biblioteca Texto
  inclua biblioteca Tipos
  
	funcao inicio()
	{
	    cadeia nomePrograma ="jogo da Forca", versaoPrograma="3.0", letraDigitada
	    inteiro numeroErros=0, numeroSorteado=Util.sorteia(0,4)
	    const inteiro numeroTentativas=5
	
      cadeia frutas[]=
      {
        "laranja","maçã","banana","melancia","ameixa"
      }
      cadeia frutaSelecionada=frutas[numeroSorteado]

	inteiro numeroCaracteres=Texto.numero_caracteres(frutaSelecionada)

	    cadeia palavraSecreta[8]//precisa estar esse número engessado, pois é uma limitação do Portugol!(número máximo de caracteres, maior nome de fruta, nesse caso a melancia)
	

	    para(inteiro i=0;i<numeroCaracteres;i++)
	    {
	    		caracter letra=Texto.obter_caracter(frutaSelecionada, i)
	    		palavraSecreta[i]=Tipos.caracter_para_cadeia(letra)
	    		//escreva(palavraSecreta[i]+"\t")
	    }
	    
	    cadeia letraCorreta[8]

	    escreva(nomePrograma+" "+versaoPrograma+"\n \n")

	     para(inteiro i=0;i<numeroCaracteres;i++)
	    {
	    		caracter letra=Texto.obter_caracter(frutaSelecionada, i)
	    		letraCorreta[i]="_"
	    		escreva(letraCorreta[i]+"\t")
	    }
	   
	
	    logico jogadorVenceu=falso
	    
		
	    enquanto(jogadorVenceu==falso e numeroErros<numeroTentativas){
	      escreva("\n \n"+"Digite uma letra:")
	    
	      leia(letraDigitada)
	      limpa()
	      escreva(nomePrograma+" "+versaoPrograma+"\n \n")
	
	      logico letraEncontrada=falso
	
	      escreva(nomePrograma+" "+versaoPrograma+"\n \n")
	
	      para(inteiro i=0;i<numeroCaracteres;i++){
	        se(letraDigitada==palavraSecreta[i]){
	          letraEncontrada=verdadeiro
	          letraCorreta[i]=letraDigitada
	        }
	      }

	      se(letraEncontrada==verdadeiro){
	        escreva("Letra correta!"+"\t")
	        escreva(numeroErros+" erro(s)"+"! \n")
	        limpa()
	        escreva(nomePrograma+" "+versaoPrograma+"\n \n")
	      }
	
	
	      se(letraEncontrada==falso){
	        numeroErros++
	          escreva("Letra incorreta!"+"\t"+numeroErros+" erro(s)"+"! \n \n")
	      }
	
	      jogadorVenceu=verdadeiro
	      para(inteiro i=0;i<numeroCaracteres;i++){
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
	
		   para(inteiro i=0;i<numeroCaracteres;i++){
		   	palavraSecretaEmTexto+=palavraSecreta[i]
		   }
	        
	        escreva("A palavra secreta era: "+palavraSecretaEmTexto+"!")
	        retorne
	      }

	      inteiro j=0
	      enquanto(j<numeroCaracteres){
	          escreva(letraCorreta[j]+"\t")
	          j++
	      }
	      escreva("\n \n")
    		}	
  	 }
}
