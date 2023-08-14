programa {
	funcao inicio() {
		//escreva("/////////////////////////////////\n")
		//escreva("                                 \n")
		//escreva("/////////////////////////////////\n")

		//i++
		//i = i+1
		//i += 1
		//linha
		para(inteiro i=0; i<=4; i++) {
			escreva("\n")
			//coluna
			para(inteiro j=0; j<=5; j++) {
				escreva("*")
				para(inteiro k=0; k<=3; k++) {
					se(k == 2) {
						escreva("*")
					} senao {
						escreva("^")
					}
				}
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 183; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 11, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */