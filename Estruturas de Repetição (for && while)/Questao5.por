algoritmo
declare
	cont, res numerico
para cont <- 1 ate 200 faca
	inicio
		res <- resto (cont, 4)
		se res = 0 entao
			inicio
				escreva "O número ", cont, " é divisivel por 4"
			fim
	fim
fim_algoritmo
