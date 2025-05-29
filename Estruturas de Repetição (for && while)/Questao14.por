algoritmo
declare 
	codigo literal
	pR, pCS, pCA, Sun, Bns, media, itens, totalP, totalA numerico
	refri, cas_sim, cas_dup, sundae, banana numerico
escreva "| - CÓDIGO - | ---- PRODUTO ---- | - PREÇO (R$) - |"
escreva "|     A              | Refrigerante           |     R$ 0,60    |"
escreva "|     B              | Casquinha simples |     R$ 1,00    |"
escreva "|     C              | Casquinha dupla    |     R$ 1,20    |"
escreva "|     D              | Sundae                   |     R$ 1,50    |"
escreva "|     E              | Banana Split           |     R$ 2,00    |"
escreva "  "
enquanto codigo <> "pare" faca
	inicio
		escreva "Insira o codigo do produto desejado: "
		leia codigo
		se codigo = "A" entao
			inicio
				pR <- pR + 1
				refri <- refri + 0.60
			fim
			senao
				inicio
					se codigo = "B" entao
						inicio
							pCS <- pCS + 1
							cas_sim <- cas_sim + 1
						fim
						senao
							inicio
								se codigo = "C" entao
									inicio
										pCA <- pCA + 1
										cas_dup <- cas_dup + 1.20
									fim
									senao
										inicio
											se codigo = "D" entao
												inicio
													Sun <- Sun + 1
													sundae <- sundae + 1.50
												fim
												senao
													inicio
														se codigo = "E" entao
															inicio
																Bns <- Bns + 1
																banana <- banana + 2
															fim
													fim
										fim
							fim
				fim
totalA <- (refri + cas_sim + cas_dup + sundae + banana)
media <- totalA / (pR + pCS + pCA + Sun + Bns)
	fim
escreva "O número de refrigerantes vendidos foi: ", pR
escreva "O número de casquinhas simples vendidas foi: ", pCS
escreva "O número de casquinhas duplas vendidas foi: ", pCA
escreva "O número de Sundaes vendidos foi: ", Sun
escreva "O número de Bananas Splits vendidas foi: ", Bns
escreva ""
escreva "O valor total de Refrigerantes vendidos foi: R$ ", refri
escreva "O valor total de casquinhas simples vendidas foi: R$ ", cas_sim
escreva "O valor total de casquinhas duplas vendidas foi: R$ ", cas_dup
escreva "O valor total de Sundaes vendidos foi: R$ ", sundae
escreva "O valor total de Bananas Splits vendidas foi: R$ ", banana
escreva ""
escreva "O total arrecadado somando todos os produtos foi: R$ ", totalA
escreva ""
escreva "A media de valor pago por pedido foi: ", media
fim_algoritmo
