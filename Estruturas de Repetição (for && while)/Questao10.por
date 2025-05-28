algoritmo
declare
	inteiro, cont, num, fat numerico
para cont <- 1 ate 15 faca
	inicio
		escreva "Coloque um número: "
		leia num
		fat <- 1
		inteiro <- 1
			repita
				fat <- fat * inteiro
				inteiro <- inteiro + 1
			ate inteiro > num
		escreva "O fatorial do número ", num, " é: ", fat
	fim
fim_algoritmo
