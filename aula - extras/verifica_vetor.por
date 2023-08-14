//Vetores

programa {
	funcao inicio() {
		const inteiro TAMANHO = 4
		cadeia vetorNomes[TAMANHO] = {"Luciana", "Liliane", "Isabela", "Julia"}

		para(inteiro i=0; i<=TAMANHO-1; i++) {
			se(vetorNomes[i] == "Isabela") {
				escreva(vetorNomes[i], "\nA posição é ", i)
				pare
			}
			//escreva(vetorNomes[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 9; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */