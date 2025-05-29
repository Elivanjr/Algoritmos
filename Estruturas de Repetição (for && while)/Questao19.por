algoritmo
declare
	placa literal
	quadrante, limite_velocidade, velocidade_real, excesso, multa numerico
	total_multa1, total_multa2, total_multa3, total_multa4 numerico
	cont_quadrante1, cont_quadrante2, cont_quadrante3, cont_quadrante4 numerico
	media_multa1, media_multa2, media_multa3, media_multa4 numerico
// Inicializa as variáveis de contagem e total de multas
total_multa1 <- 0
total_multa2 <- 0
total_multa3 <- 0
total_multa4 <- 0
cont_quadrante1 <- 0
cont_quadrante2 <- 0
cont_quadrante3 <- 0
cont_quadrante4 <- 0
// Loop para leitura das infrações
enquanto placa <> "0" faca
	inicio
		escreva "Informe a placa do veículo (ou 0 para encerrar): "
		leia placa
		se placa <> "0" entao
			inicio
				escreva "Informe o quadrante da infração (1 a 4): "
				leia quadrante
				escreva "Informe o limite de velocidade no local (em km/h): "
				leia limite_velocidade
				escreva "Informe a velocidade registrada do veículo (em km/h): "
				leia velocidade_real
				
				// Calcula o excesso de velocidade e o valor da multa
				se velocidade_real > limite_velocidade entao
					inicio
						excesso <- velocidade_real - limite_velocidade
						multa <- 200 + (excesso * 50)
						
						// Exibe a violação
						escreva "Placa do Veículo: ", placa
						escreva "Velocidade Registrada: ", velocidade_real, " km/h"
						escreva "Velocidade Limite: ", limite_velocidade, " km/h"
						escreva "Valor da Multa: R$ ", multa
						
						// Atualiza os totais e contagem por quadrante
						se quadrante = 1 entao
							inicio
								total_multa1 <- total_multa1 + multa
								cont_quadrante1 <- cont_quadrante1 + 1
							fim
						senao
							inicio
								se quadrante = 2 entao
									inicio
										total_multa2 <- total_multa2 + multa
										cont_quadrante2 <- cont_quadrante2 + 1
									fim
								senao
									inicio
										se quadrante = 3 entao
											inicio
												total_multa3 <- total_multa3 + multa
												cont_quadrante3 <- cont_quadrante3 + 1
											fim
										senao
											inicio
												se quadrante = 4 entao
													inicio
														total_multa4 <- total_multa4 + multa
														cont_quadrante4 <- cont_quadrante4 + 1
													fim
											fim
									fim
							fim
					fim
		fim
	fim
// Calcula a multa média por quadrante
se cont_quadrante1 > 0 entao
	inicio
		media_multa1 <- total_multa1 / cont_quadrante1
	fim
senao
	inicio
		media_multa1 <- 0
	fim
se cont_quadrante2 > 0 entao
	inicio
		media_multa2 <- total_multa2 / cont_quadrante2
	fim
senao
	inicio
		media_multa2 <- 0
	fim
se cont_quadrante3 > 0 entao
	inicio
		media_multa3 <- total_multa3 / cont_quadrante3
	fim
senao
	inicio
		media_multa3 <- 0
	fim
se cont_quadrante4 > 0 entao
	inicio
		media_multa4 <- total_multa4 / cont_quadrante4
	fim
senao
	inicio
		media_multa4 <- 0
	fim
// Exibe o relatório final
escreva "Relatório de Violações de Velocidade:"
escreva "Quadrante 1 - Número de Infrações: ", cont_quadrante1, " - Multa Média: R$ ", media_multa1
escreva "Quadrante 2 - Número de Infrações: ", cont_quadrante2, " - Multa Média: R$ ", media_multa2
escreva "Quadrante 3 - Número de Infrações: ", cont_quadrante3, " - Multa Média: R$ ", media_multa3
escreva "Quadrante 4 - Número de Infrações: ", cont_quadrante4, " - Multa Média: R$ ", media_multa4
fim_algoritmo
