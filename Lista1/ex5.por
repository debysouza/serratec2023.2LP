/*
5. O programa “Apolo” escreve na tela o resultado das expressões abaixo:
a. 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66
b. 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9
*/
programa {
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> te
	inclua biblioteca Tipos --> ti
	
	inteiro opcao, a, b
	
	funcao inicio() {
		escreva("Seja muito bem-vindo(a) ao Programa Apolo!\n\n")
		menu()
	}

	funcao menu() {
		escreva("Informe a opção referente a expressão que deseja calcular:\n",
			"\na = 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66", te.preencher_a_esquerda('_', 30, "(1)"),
			"\nb = 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9", te.preencher_a_esquerda('_', 10, "(2)"),
			"\nSair", te.preencher_a_esquerda('_', 68, "(3)"), "\n")
		leia(opcao)
		limpa()
		escolha(opcao) {
			caso 1:
				a = 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66
				escreva("Calculando a expressão a = 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66...\n")
				u.aguarde(3000)
				limpa()
				escreva("O resultado da expressão a = 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66 é ", a, ".\n")
			pare
			caso 2:
				b = 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9
				escreva("Calculando a expressão b = 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9...\n")
				u.aguarde(3000)
				limpa()
				escreva("O resultado da expressão b = 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9 é ", b, ".\n")
			pare
			caso 3:
				escreva("Deseja sair do programa?\n\nDigite 1 para sair ou 2 para continuar no programa.\n")
				leia(opcao)
				limpa()
				se(opcao == 2) {
					menu()
				} senao {
					limpa()
					escreva("Volte sempre!\n")
				}
			pare
			caso contrario:
				limpa()
				escreva("Opção inválida! Tente novamente!")
				u.aguarde(3000)
				limpa()
				menu()
			pare
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1259; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */