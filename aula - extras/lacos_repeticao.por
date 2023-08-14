programa {
	inclua biblioteca Util --> u
	
	funcao inicio() {

		/*para(inteiro i=10; i>0; i--) {
			escreva("Detonação em: ", i, "\n")
			u.aguarde(1000)
			limpa()
			//i--
		}
		escreva("Boooom!!!")*/

		/*inteiro i = 10
		enquanto(i>0) {
			escreva("Detonação em: ", i, "\n")
			u.aguarde(1000)
			limpa()
			i--
		}
		escreva("Boooom!!!")*/

		inteiro i = 10
		faca {
			escreva("Detonação em: ", i, "\n")
			u.aguarde(1000)
			limpa()
			i--
		} enquanto(i>0)
		escreva("Boooom!!!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 469; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */