programa {
	funcao inicio() {
		cadeia usuario, senha
		logico usuarioValido = falso
		
		escreva("Digite seu usuario: ")
		leia(usuario)
		escreva("Digite sua senha: ")
		leia(senha)

		//se(){}

		enquanto(usuarioValido == falso) {
			escreva("Digite seu usuario: ")
			leia(usuario)
			escreva("Digite sua senha: ")
			leia(senha)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 342; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */