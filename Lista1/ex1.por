/*
1. O programa “Poseidon” pergunta seu nome e sobrenome, e depois
gentilmente te cumprimenta.
*/
programa {
	inclua biblioteca Texto --> te
	inclua biblioteca Tipos --> ti
	inclua biblioteca Util --> u
		
	cadeia nome, sobrenome
	inteiro contaCaracteres
	logico valida
	
	funcao inicio() {
		escreva("Olá, ", te.caixa_alta(perguntar()), " seja muito bem-vindo(a) ao programa Poseidon!\n")
	}

	funcao cadeia perguntar() {
		cadeia nomeCompleto
		escreva("Programa Poseidon!\n\nPor favor, informe seu nome: ")
		leia(nome)
		limpa()
		escreva("Agora, informe seu sobrenome: ")
		leia(sobrenome)
		limpa()
		nomeCompleto = nome + " " + sobrenome
		verificarCaracter(nomeCompleto)
		retorne nomeCompleto
	}

	funcao verificarCaracter(cadeia valor) {
		valida = falso
		contaCaracteres = te.numero_caracteres(valor)
		para(inteiro i=0; i<contaCaracteres; i++) {
			se(ti.caracter_e_inteiro(te.obter_caracter(valor, i)) e valida == falso) {
				valida = verdadeiro
				escreva("Caracteres inválidos! Por favor, digite novamente.\n")
				u.aguarde(3000)
				limpa()
				perguntar()
			}
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1089; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contaCaracteres, 11, 9, 15}-{valida, 12, 8, 6}-{nomeCompleto, 19, 9, 12}-{i, 34, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */