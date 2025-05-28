algoritmo
declare
	cont, soma, receba numerico
soma <- 0
receba <- 1
para cont <- 1 ate 15 faca
	inicio
		soma <- receba + soma
		receba <- soma - receba
		se receba > 0 entao
			inicio
				escreva receba
			fim
	fim
fim_algoritmo
