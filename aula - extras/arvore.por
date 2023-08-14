programa{
	inteiro altura, espacoTronco, alturaTronco
	cadeia espaco, asterisco = "*"
	
	funcao inicio(){
		escreva("Insira a altura da árvore: ")
		leia(altura)

		se(altura >= 3) {
			para(inteiro i=altura; i>0; i--) {
				espaco = "" 
				para(inteiro j=i; j>0; j--) {
					espaco += " "
				}
				escreva(espaco, asterisco, "\n")
				asterisco += "**"			
			}
			espacoTronco = (altura*2-1)/2-1
			para(inteiro i=0; i<espacoTronco; i++) {
				espaco += " "		
			}
			se(altura/2 > 5) {
				altura=10
			}
			para(inteiro i=0; i<altura/2; i++) {
				escreva(espaco, "***\n")
			}
		} senao {
			escreva("Tamanho deve ser maior do que 3.\n")
			inicio()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 87; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */