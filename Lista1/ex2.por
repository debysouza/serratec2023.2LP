/*
2. O programa “Hera” irá imprimir a soma das idades de todos os colegas da
sua equipe (6 pessoas). Pergunte a cada um a idade e não esqueça a sua!
Depois faça a atribuição direta da expressão em uma variável inteira.
*/
programa {
	inclua biblioteca Util --> u
	
	funcao inicio() {
		inteiro idade, soma=0

		escreva("Seja muito bem-vindo(a) ao Programa Hera!\n\n")
		para(inteiro i=0; i<6; i++) {
			se(i != 5) {
				escreva("Informe a idade do ", i+1,"º colega: ")
				leia(idade)
				soma += idade
				limpa()
			} senao {
				escreva("Informe a sua idade: ")
				leia(idade)
				soma += idade
				limpa()
			}
		}
		u.aguarde(3000)
		escreva("A soma das idades da equipe é ", soma, ".\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 620; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */