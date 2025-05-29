algoritmo
declare
	codigo, quant, total_pagar, uni_venda, total_periodo, total_reais, valor_medio, pedidos numerico
	camB, camC, mol, cal, abr, bon, CB, CC, MO, CA, AB, BO, soma numerico
escreva "| - CÓDIGO - | ---- PRODUTO ---- | - PREÇO (R$) -  |"
escreva "|     1      | Camisa Branca     |     R$ 7.00     |"
escreva "|     2      | Camisa Colorida   |     R$ 9.00     |"
escreva "|     3      | Moleton           |     R$ 17.00    |"
escreva "|     4      | Calça Comprida    |     R$ 12,00    |"
escreva "|     5      | Abrigo            |     R$ 25,00    |"
escreva "|     6      | Bonê              |     R$ 25,00    |"
escreva "  "
codigo <- 1
enquanto codigo <> 0 faca
	inicio
		escreva "Insira o codigo do produto que deseja: "
		leia codigo
		se codigo = 1 entao
			inicio
				camB <- camB + 1
				CB <- CB + 7
			fim
			senao
				inicio
					se codigo = 2 entao
						inicio
							camC <- camC + 1
							CC <- CC + 9
						fim
						senao
							inicio
								se codigo = 3 entao
									inicio
										mol <- mol + 1
										MO <- MO + 17
									fim
									senao
										inicio
											se codigo = 4 entao
												inicio
													cal <- cal + 1
													CA <- CA + 12
												fim
												senao
													inicio
														se codigo = 5 entao
															inicio
																abr <- abr + 1
																AB <- AB + 25
															fim
															senao
																inicio
																	se codigo = 6 entao
																		inicio
																			bon <- bon + 1
																			BO <- BO + 5
																		fim
																fim
													fim
										fim
							fim
				fim
total_reais <- (CB + CC + MO + CA + AB + BO)
soma <- (camB + camC + mol + cal + abr + bon)
valor_medio <- total_reais / soma
// Item 1 - Número de unidades vendidas de cada produto.
escreva "O número de unidades vendidas do produto de codigo 1 é: ", camB
escreva "O número de unidades vendidas do produto de codigo 2 é: ", camC
escreva "O número de unidades vendidas do produto de codigo 3 é: ", mol
escreva "O número de unidades vendidas do produto de codigo 4 é: ", cal
escreva "O número de unidades vendidas do produto de codigo 5 é: ", abr
escreva "O número de unidades vendidas do produto de codigo 6 é: ", bon
escreva " "
// Item 2 - Total vendido em reais
escreva "O total vendido em reais é: R$", total_reais
escreva " "
// Item 3 - Valor médio de pedido (em reais)
escreva "O valor médio de pedido em reais é: R$ ", valor_medio
escreva " "
// Item 4 - Número de pedidos processados
escreva "O número de pedidos processados é: ", soma
escreva " "
fim
fim_algoritmo
