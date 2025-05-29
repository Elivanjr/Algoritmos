algoritmo
declare
	quantK, codigo, kWh1, kWh2, kWh3, cons3, maiorRES, menorRES, maiorCOM, maiorIND numerico
	media_ind numerico
codigo <- -1
maiorRES <- 0
menorRES <- 999999
maiorCOM <- 0
maiorIND <- 0
enquanto codigo <> 0 faca
	inicio
		escreva "Insira o codigo do tipo de consumidor (1- residencial; 2- comercial; 3- industrial; 0 - finaliza): "
		leia codigo
		se codigo <> 0 entao
			inicio
				escreva "Insira a quantidade de kWh consumidos durante o mês: "
				leia quantK
					se codigo = 1 entao // Residencial
						inicio
							kWh1 <- kWh1 + quantk
							se quantk < menorRES entao
								inicio
									menorRES <- quantK
								fim
								senao
									inicio
										se quantk > maiorRES entao
											inicio
												maiorRES <- quantK
											fim
									fim
						fim
						senao
							inicio
								se codigo = 2 entao // Comercial
									inicio
										kWh2 <- kWh2 + quantk
										 se quantK > maiorCOM entao
										 	inicio
										 		maiorCOM <- quantK
										 	fim
									fim
									senao
										inicio
										se codigo = 3 entao // Industrial
											inicio
												kWh3 <- kWh3 + quantk
												cons3 <- cons3 + 1
												se quantk > maiorIND entao
													inicio
														maiorIND <- quantk
													fim
											fim		
										fim	
							fim
					
				fim
	
	fim
// Item 1 -O menor e o maior consumo do consumidor residencial
escreva "O maior consumo dos consumidores residenciais é: ", maiorRES
escreva "O menor consumo dos consumidores residenciais é: ", menorRES
escreva " "
// Item 2 - O maior consumo dos consumidores comerciais e industriais;
escreva "O maior consumo dos consumidores comerciais é: ", maiorCOM
escreva "O maior consumo dos consumidores industriais é: ", maiorIND
escreva " "
// Item 3 - O total de consumo para cada um dos tipos de consumidores;
escreva "O total de consumo para os consumidores residenciais é: ", kWh1
escreva "O total de consumo para os consumidores comerciais é: ", kWh2
escreva "O total de consumo para os consumidores industriais é: ", kWh3
escreva " "
// Item 4 - A média geral de consumo industrial;
se cons3 > 0 entao
	inicio
		media_ind <- kWh3 / cons3
		escreva "A média geral de consumo industrial é: ", media_ind
	fim
senao
	inicio
		escreva "Nenhum consumidor industrial registrado."
	fim
fim_algoritmo
