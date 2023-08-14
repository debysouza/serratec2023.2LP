//Objetivo: mostrar uma opcao para realizar cadastro!
//Outros tratamentos podem ser inseridos, explorem essas opcoes!
//Lembrem-se de arrastar a matrizLogin[][] no canto direito para baixo para ver ela sendo preenchida!
//Executem no passo a passo para visualizarem o que realmente está ocorrendo nesse código!

programa {

	inclua biblioteca Util --> u
	
	funcao inicio() {
		const inteiro LINHA=3, COLUNA=2
		cadeia nome, senha, matrizLogin[LINHA][COLUNA] = {{"",""},{"",""},{"",""}}
		inteiro opcao, contador=0

		para(inteiro i=0; i<LINHA; i++) {
			se(matrizLogin[i][0] == "" e matrizLogin[i][1] == "") {
				contador++
			}
		}

		faca {
			escreva("Olá, você deseja cadastrar um usuário no sistema?\nDigite 1 para sim ou 2 para não: ")
			leia(opcao)
			u.aguarde(2000)
			limpa()
			escolha(opcao) {
				caso 1:
					escreva("Cadastro\n\nDigite seu nome: ")
					leia(nome)
					escreva("Digite sua senha: ")
					leia(senha)
					limpa()
					para(inteiro i=0; i<LINHA; i++) {
						se(matrizLogin[i][0] == "" e matrizLogin[i][1] == "") {
							matrizLogin[i][0] = nome
							matrizLogin[i][1] = senha
							escreva("Usuário cadastrado com sucesso!")
							contador--
							u.aguarde(2000)
							limpa()
							pare
						}
					}
					pare
				caso 2:
					escreva("Obrigada por utilizar nosso sistema!\n")
					u.aguarde(2000)
					limpa()
					pare
				caso contrario:
					escreva("Opção inválida!\nTente novamente!")
					u.aguarde(2000)
					limpa()
					pare
			}
		} enquanto(contador>0)

		se(contador == 0) {
			escreva("Banco lotado!")
			u.aguarde(2000)
			limpa()
		}

		//para o login pode ter outro tratamento perguntando se o usuario deseja fazer o login
		escreva("Login\n\nDigite seu nome: ")
		leia(nome)
		escreva("Digite sua senha: ")
		leia(senha)

		//caso não seja autorizado também pode ter outro tratamento
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
 * @POSICAO-CURSOR = 1515; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizLogin, 12, 22, 11}-{contador, 13, 17, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */