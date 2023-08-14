/*
4. O programa “Atena” lê uma temperatura em graus celsius, e devolve sua
equivalência na escala fahrenheit. (Use: F = C * 1.8 + 32)
*/
programa {
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti
	
	real f
	cadeia c
	caracter opcao
	
	funcao inicio() {

		escreva("Seja muito bem-vindo(a) ao Programa Atena!\n\n")
		calcular()
	}

	funcao cadeia passarValor() {
		leia(c)
		retorne c
	}

	funcao calcular() {
		escreva("Informe uma temperatura em graus Celsius: ")
		c = passarValor()
		limpa()
		se(ti.cadeia_e_real(c) ou ti.cadeia_e_inteiro(c, 10)) {
			f = ti.cadeia_para_real(c) * 1.8 + 32
			escreva("Realizando o conversão...\n\n")
			u.aguarde(5000)
			limpa()
			escreva("A temperatura em graus Fahrenheit equivalente é ", f, "°.\n")
		} senao {
			escreva("Opção inválida!\nDigite s para inserir outro valor ou n para encerrar o programa: ")
			leia(opcao)
			limpa()
			se(opcao == 's') {
				calcular()
			} senao {
				escreva("Volte sempre!")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 398; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */