/*
1. Criar o programa “Qual o significado da vida, do universo e tudo mais?”. Ao
clicar, deve aparecer no console o número do universo.
O programa terá uma constante Inteira, com identificador “UNIVERSO”,
onde você irá atribuir o número em questão. Após a atribuição, escreva na
tela o conteúdo da variável.
*/
programa {
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> te

	inteiro opcao
	cadeia resposta
	
	funcao inicio() {
		escreva("Qual o significado da vida, do universo e tudo mais?\n")
		u.aguarde(3000)
		limpa()
		escreva("Você está preparado para receber essa resposta direto do universo?\n",
			"\nSim", te.preencher_a_esquerda('_', 11, "(1)"),
			"\nNão", te.preencher_a_esquerda('_', 17, "(2)"),
			"\nSair", te.preencher_a_esquerda('_', 20, "(0)"), "\n")
		leia(opcao)
		limpa()
		escreva("Calculando")
		u.aguarde(3000)
		para(inteiro i=0; i<20; i++) {
			escreva(".")
			u.aguarde(3000)
		}
		escreva("\nNão importa qual foi sua opção, vou te responder essa pergunta.\n")
		u.aguarde(3000)
		limpa()
		escreva("Mas antes, me diga você, o que pensa sobre o sobre o significado da vida, do universo e tudo mais?\n")
		leia(resposta)
		limpa()
		se(te.posicao_texto("42", resposta, 0) > -1) {
			escreva("Boa resposta, agora já pode seguir para a próxima disciplina!")
		} senao {
			escreva("Infelizmente o UNIVERSO não conspirou a seu favor!\nVocê precisa ler o Guia do Mochileiro das Galáxias - Douglas Adams\nVolte após ler a referência!")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 438; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */