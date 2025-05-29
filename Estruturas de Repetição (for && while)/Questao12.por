algoritmo
declare
	cont, chap, ch1, ch2, ch3, nul, bra, media, p1, p2, p3, p4, p5, win numerico
	winner literal
ch1 <- 0
ch2 <- 0
ch3 <- 0
nul <- 0
bra <- 0
para cont <- 1 ate 10 faca
	inicio
	escreva "Qual chapa vai votar? Digite 1, 2 ou 3? Mas se quiser nulo digite 4 e branco digite 5: "
	leia chap
		se chap = 1 entao
			inicio
				ch1 <- ch1 + 1
			fim
		senao
			inicio
				se chap = 2 entao
					inicio
						ch2 <- ch2 + 1
					fim
				senao
					inicio
						se chap = 3 entao
							inicio
								ch3 <- ch3 + 1
							fim
						senao
						inicio
							se chap = 4 entao
								inicio
									nul <- nul + 1
								fim
							senao
								inicio
									se chap = 5 entao
										inicio
											bra <- bra + 1
										fim
								fim
						fim
							
					fim
						
			fim
escreva "A contagem de votos na chapa 1 foi: ", ch1, " votos."			
escreva "A contagem de votos na chapa 2 foi: ", ch2, " votos."		
escreva "A contagem de votos na chapa 3 foi: ", ch3, " votos."		
escreva "A contagem de votos nulos foi: ", nul, " votos."		
escreva "A contagem de votos em branco foi: ", bra, " votos."
escreva " "
media <- ch1 + ch2 + ch3 + nul + bra
se media > 0 entao
	inicio
		p1 <- (ch1 * 100) / media
		p2 <- (ch2 * 100) / media
		p3 <- (ch3 * 100) / media
		p4 <- (nul * 100) / media
		p5 <- (bra * 100) / media
	fim
	senao
		inicio
			escreva "Nenhum voto foi registrado."
		fim
se p1 > p2 e p1 > p3 entao
	inicio
		win <- p1
		escreva "A chapa vencedora foi a Chapa 1."
	fim
	senao
		inicio
			se p2 > p3 entao
				inicio
					win <- p2
					escreva "A chapa vencedora foi a Chapa 2."
				fim
				senao
					inicio
						se p3 > p2 e p3 > p1 entao
							inicio
								win <- p3
								escreva "A chapa vencedora foi a Chapa 3."
							fim
							senao
								inicio
									escreva "Será necessário o segundo turno."
								fim
					fim
		fim
fim		
fim_algoritmo
