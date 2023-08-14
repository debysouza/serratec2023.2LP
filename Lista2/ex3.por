/*
3. (Desafio) O programa "Estoque" irá solicitar que o cliente acesse um menu
e escolha entre as opções (Listar Produtos com estoque; Listar Produtos
sem estoque; Sair). Para gerar as listas será preciso simular um banco
(vetores ou matrizes). Para cada opção, exibe a lista correspondente. Para a
opção Sair, perguntar se deseja, realmente, sair e encerra o programa se a
resposta for sim.
*/
programa {
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> te
	inclua biblioteca Tipos --> ti

	const inteiro LINHA=3, COLUNA=2
	cadeia matrizProdutos[LINHA][COLUNA]
	inteiro opcao, contador=0
	caracter op
	
	funcao inicio() {
		escreva("Bem-vindo ao programa Estoque!\n")
		u.aguarde(3000)
		limpa()
		carregarProdutos()
		menu()
	}

	funcao carregarProdutos() {
		escreva("Cadastro de Produtos\n\n")
		para(inteiro i=0; i<LINHA; i++) {
			escreva("Informe o ", i+1, "° produto: ")
			leia(matrizProdutos[i][0])
			escreva("Informe a quantidade em estoque do ", i+1, "° produto: ")
			leia(matrizProdutos[i][1])
			limpa()
		}
	}

	funcao menu() {
		limpa()
		escreva("Escolha uma das opções abaixo:\n",
			"\nProdutos com Estoque", te.preencher_a_esquerda('.', 11, "(1)"),
			"\nProdutos sem Estoque", te.preencher_a_esquerda('.', 11, "(2)"),
			"\nSair", te.preencher_a_esquerda('.', 27, "(0)"), "\n")
		leia(opcao)
		escolha(opcao) {
			caso 1:
				limpa()
				escreva("Lista de Produtos com estoque\n\n")
				para(inteiro i=0; i<LINHA; i++) {
					se(ti.cadeia_para_inteiro(matrizProdutos[i][1], 10) > 0) {
						escreva(matrizProdutos[i][0], "\t", matrizProdutos[i][1], "\n")
						contador++
					}
				}
			 	se(contador == 0) {
					limpa()
					escreva("Não temos produtos com estoque!\n\n")
					u.aguarde(3000)
					menu()
				} senao {
					u.aguarde(5000)
					menu()
				}
			pare
			caso 2:
				limpa()
				escreva("Lista de Produtos sem estoque\n\n")
				para(inteiro i=0; i<LINHA; i++) {
					se(ti.cadeia_para_inteiro(matrizProdutos[i][1], 10) <= 0) {
						escreva(matrizProdutos[i][0], "\t", matrizProdutos[i][1], "\n")
						contador++
					}
				}
			 	se(contador == 0) {
					limpa()
					escreva("Não temos produtos com estoque!\n\n")
					u.aguarde(3000)
					menu()
				} senao {
					u.aguarde(5000)
					menu()
				}
			pare
			caso 0:
				limpa()
				escreva("Deseja sair do programa?\n\nDigite s para sair ou n para continuar no programa.\n")
				leia(op)
				se(ti.caracter_para_logico(op) == falso) {
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
 * @POSICAO-CURSOR = 2284; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizProdutos, 15, 8, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */