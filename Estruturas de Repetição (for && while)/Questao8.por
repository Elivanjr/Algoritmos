algoritmo
declare
	cont, soma, receba, aux numerico
soma <- 0
receba <- 1
para cont <- 1 ate 15 faca
	inicio
		aux <- receba
		receba <- soma + receba
		soma <- aux
		escreva soma
	fim
fim_algoritmo
