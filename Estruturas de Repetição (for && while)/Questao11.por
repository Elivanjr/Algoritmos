algoritmo
declare
	grao, soma, cont numerico
grao <- 1
soma <- 0
para cont <- 1 ate 64 faca
	inicio
		soma <- grao + soma
		grao <- grao * 2
		escreva "O somatório do n° de graos no xadrex é: ", soma, ", quadro ", cont
	fim
fim_algoritmo
