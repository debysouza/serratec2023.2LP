programa {
	funcao inicio() {
		const inteiro LINHA=3, COLUNA=2
		cadeia matrizLogin[LINHA][COLUNA] = {{"Luciana","123"},{"Liliane","456"},{"Isabela","789"}}
		cadeia nome, senha

		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Digite sua senha: ")
		leia(senha)

		para(inteiro i=0; i<LINHA; i++) {
			se(matrizLogin[i][0] == nome e matrizLogin[i][1] == senha) {
				escreva("Autorizado!")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 273; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */