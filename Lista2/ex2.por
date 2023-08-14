/*
2. Escrever o programa “Minha Idade”. O programa deve receber sua data de
nascimento e calcular sua idade. Após, escreva a idade na tela.
*/
programa {
	inclua biblioteca Calendario --> cal
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti
	inclua biblioteca Texto --> te

	inteiro d, m, a, idade
	
	funcao inicio() {
		cumprimentar()
		dia()
		mes()
		ano()
		calcularIdade()
	}

	funcao cumprimentar() {
		escreva("Bem-vindo(a) ao programa Minha Idade!\n\nAqui, vamos calcular sua idade, responda as perguntas abaixo.")
		u.aguarde(3000)
		limpa()
	}
	
	funcao inteiro dia() {
		escreva("Em que dia você nasceu? ")
		leia(d)
		limpa()
		se(d > 0 ou d < 32) {
			retorne d
		} senao {
			escreva("Dia inválido!")
			u.aguarde(3000)
			retorne dia()
		}
	}

	funcao inteiro mes() {
		escreva("Em que mês você nasceu? ")
		leia(m)
		limpa()
		se(m == 1 ou m == 3 ou m == 5 ou m == 7 ou m == 8 ou m == 10 ou m == 12) {
			se(d > 0 ou d < 32) {
				retorne m
			}
			escreva("Dia inválido!")
			u.aguarde(3000)
			retorne dia()
		} senao se (m == 4 ou m == 6 ou m == 9 ou m == 11) {
			se(d > 0 ou d < 31) {
				retorne m
			}
			escreva("Dia inválido!")
			u.aguarde(3000)
			retorne dia()
		} senao se (m == 2) {
			se(d > 0 ou d < 30) {
				retorne m
			}
			escreva("Dia inválido!")
			u.aguarde(3000)
			retorne dia()
		} senao {
			escreva("Mês inválido!")
			u.aguarde(3000)
			retorne mes()
		}
	}
	
	funcao inteiro ano() {
		escreva("Em que ano você nasceu? ")
		leia(a)
		limpa()
		se(te.numero_caracteres(ti.inteiro_para_cadeia(a, 10)) == 4) {
			retorne a
		} senao {
			escreva("Ano inválido!")
			u.aguarde(3000)
			retorne ano()
		}
	}
	
	funcao calcularIdade() {
		se(d == cal.dia_mes_atual() e m == cal.mes_atual()) {
			idade = cal.ano_atual() - a
			escreva("Parabéns!!!!\nSeu aniversário é hoje!!!\nA sua idade hoje é ", idade, " anos!\n")
		} senao se(d < cal.dia_mes_atual() e m < cal.mes_atual() ou m < cal.mes_atual()) {
			idade = cal.ano_atual() - a
			escreva("A sua idade hoje é ", idade, " anos!\n")
		} senao {
			idade = cal.ano_atual() - a - 1
			escreva("A sua idade hoje é ", idade, " anos!\n")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2135; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */