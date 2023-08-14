/*
3. (DESAFIO) Crie o programa “Zeus”, que após ler dois números inteiros
apresenta as operações de soma, subtração, multiplicação e divisão com
eles.
Obs.: Trate o maior número possível de erros (ex: operações com números
negativos, divisão por zero, uso de letras, etc).

--alguns tratamentos foram adicionados, mas podem ser incluídos outros!
*/
programa {
	inclua biblioteca Texto --> te
	inclua biblioteca Tipos --> ti
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> m
	
	inteiro n1, n2, soma=0, subtracao=0, multiplicacao=0
	real divisao=0.0
	cadeia op
	caracter opcao, confirma
	
	funcao inicio() {
		menu()
	}

	funcao menu() {
		limpa()
		escreva("Seja muito bem-vindo(a) ao Programa Zeus!\n\nEscolha uma das seguintes operações:",
				"\nSoma", te.preencher_a_esquerda('_', 20, "(+)"),
				"\nSubtração", te.preencher_a_esquerda('_', 15, "(-)"),
				"\nMultiplicação", te.preencher_a_esquerda('_', 11, "(*)"),
				"\nDivisão", te.preencher_a_esquerda('_', 17, "(/)"),
				"\nSair", te.preencher_a_esquerda('_', 20, "(s)"), "\n")
		leia(op)
		se(te.numero_caracteres(op) != 1) {
			limpa()
			escreva("Opção inválida! Tente novamente!")
			u.aguarde(3000)
			menu()
		}
		se(op == "+" ou op == "-" ou op == "*" ou op == "/") {
			limpa()
			escreva("Informe o primeiro valor: ")
			leia(n1)
			escreva("Informe o segundo valor: ")
			leia(n2)
		}
		opcao = ti.cadeia_para_caracter(op)
		escolha(opcao) {
			caso '+':
				digitarValores('+')
				limpa()
				soma = n1+n2
				escreva("O resultado da operacao ", n1, opcao, n2, " = ", soma, "\n")
				u.aguarde(3000)
				menu()
			pare
			caso '-':
				digitarValores('-')
				limpa()
				subtracao = n1-n2
				escreva("O resultado da operacao ", n1, opcao, n2, " = ", subtracao, "\n")
				u.aguarde(3000)
				menu()
			pare
			caso '*':
				digitarValores('*')
				limpa()
				multiplicacao = n1*n2
				escreva("O resultado da operacao ", n1, opcao, n2, " = ", multiplicacao, "\n")
				u.aguarde(3000)
				menu()
			pare
			caso '/':
				digitarValores('/')
				limpa()
				divisao = m.arredondar(ti.inteiro_para_real(n1)/ti.inteiro_para_real(n2), 2)
				escreva("O resultado da operacao ", n1, opcao, n2, " = ", divisao, "\n")
				u.aguarde(3000)
				menu()
			pare
			caso 's':
				escreva("Deseja sair do programa?\n\nDigite s para sair ou n para continuar no programa.\n")
				leia(opcao)
				se(ti.caracter_para_logico(opcao) == falso) {
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
	
	funcao digitarValores(caracter operacao) {
		escreva("\nA operação desejada é ", n1, operacao, n2, "?\n\nDigite s para confirmar ou n para voltar ao menu anterior.\n")
		leia(confirma)
		se(ti.caracter_para_logico(confirma) == falso) {
			menu()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2123; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */