programa {

	caracter opc
	
	funcao inicio() {
		
		escreva("Deseja realmente sair?\nDigite s para sim ou n para não:\n")
		leia(opc)
		
		escolha(opc) {
			caso 's':
				escreva("Operação finalizada!")
				pare
			caso 'n':
				escreva("Deseja voltar para o menu?")
				pare
			caso 'S':
				escreva("Operação finalizada!")
				pare
			caso 'N':
				escreva("Deseja voltar para o menu?")
				pare
			caso contrario:
				escreva("Opção inválida!")
				pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 53; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */