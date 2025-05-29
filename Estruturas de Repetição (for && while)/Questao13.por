algoritmo
declare
	clube, salario, cidade, cont numerico
	cl1, cl2, cl3, cls3, total, sl1, sl2, media1, pPA numerico
para cont <- 1 ate 5 faca
	inicio
		escreva "Clube de preferência? (1-Grêmio; 2-Internacional; 3-Outros)"
		leia clube
		escreva "Qual é o valor do seu salário? "
		leia salario
		escreva "cidade de origem? (0-Porto Alegre; 1-Outras)"
		leia cidade
		se cidade = 0 entao
			inicio
			se clube = 1 entao
				inicio
					cl1 <- cl1 + 1
					sl1 <- sl1 + salario
				fim
				senao
					inicio
						se clube = 2 entao
							inicio
								cl2 <- cl2 + 1
								sl2 <- sl2 + salario
							fim
							senao
								inicio
									se clube = 3 entao
										inicio
											pPA <- pPA + 1
										fim
								fim
					fim
				fim
		se cidade = 1 entao
			inicio
			se clube = 1 entao
				inicio
					cl1 <- cl1 + 1
					sl1 <- sl1 + salario
				fim
				senao
					inicio
						se clube = 2 entao
							inicio
								cl2 <- cl2 + 1
								sl2 <- sl2 + salario
							fim
							senao
								inicio
									se clube = 3 entao
										inicio
											cl3 <- cl3 + 1
										fim
								fim
					fim	
			fim
media1 <- (sl1 + sl2) / (cl1 + cl2)
cls3 <- cl3 + pPA
escreva "O clube 1 tem ", cl1, " torcedores."
escreva "O clube 2 tem ", cl2, " torcedores."
escreva "O clube 3 tem ", cls3, " torcedores."
escreva "O número de pessoas entrevistadas foi : ", cont
escreva "A media de sálario dos torcedores do Grêmio e do Internacional é: R$ ", media1, ",00"
escreva "O número de pessoas nascidas em Porto Alegre que não torcem para os dois primeiros times é: ", pPA
	fim
fim_algoritmo
