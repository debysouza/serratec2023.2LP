//Pensar em um programa que faça um login.
//declarar usuario e senha
//1- pedir usuario
//2- ler usuario
//3- pedir senha
//4- ler senha
//validar usuario e senha
//5- se existir -> cumprimenta
//6- se não existir -> mensagem de erro

programa {
	funcao inicio() {
		cadeia usuario, senha

		escreva("Digite seu nome de usuário: ")
		leia(usuario)
		limpa()
		escreva("Digite sua senha: ")
		leia(senha)
		limpa()

		//operadores: e ou nao
		se((usuario == "marcos@gmail.com" e senha == "123") ou (usuario == "Julia" e senha == "789")) {
			//se for verdade
			escreva("Bem-vindo, ", usuario, "!\n")
		} senao se(usuario == "Aurélio" e senha == "456") {
			//se for verdade
			escreva("Bem-vindo, ", usuario, "!\n")
		} senao {
			//se for falso
			escreva("Usuário inválido!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 264; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {usuario, 13, 9, 7}-{senha, 13, 18, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */