algoritmo
declare
	id_consumer, tipo_consumo, consumo_kwh numerico
	total_pagar, total_residencial, total_comercial, total_industrial numerico
	cont_residencial, cont_comercial, cont_industrial numerico
	total_consumo_res, total_consumo_com, total_consumo_ind numerico
	media_consumo_res, media_consumo_com, media_consumo_ind numerico
// Inicializa variáveis de contagem e totais
total_residencial <- 0
total_comercial <- 0
total_industrial <- 0
cont_residencial <- 0
cont_comercial <- 0
cont_industrial <- 0
id_consumer <- -1
// Loop de leitura dos dados de consumo
enquanto id_consumer <> 0 faca
	inicio
		escreva "Informe o número de identificação do consumidor (ou 0 para encerrar): "
		leia id_consumer
		se id_consumer <> 0 entao
			inicio
				escreva "Informe o tipo de consumo (1 - Residencial, 2 - Comercial, 3 - Industrial): "
				leia tipo_consumo
				escreva "Informe a quantidade de kWh consumida: "
				leia consumo_kwh
				// Calcula o valor a pagar e aplica desconto se necessário
				se tipo_consumo = 1 entao // Residencial
					inicio
						se consumo_kwh < 30 entao
							inicio
								total_pagar <- (consumo_kwh * 0.15) * 0.8 // Aplica 20% de desconto
							fim
						senao
							inicio
								total_pagar <- consumo_kwh * 0.15
							fim
						total_residencial <- total_residencial + total_pagar
						total_consumo_res <- total_consumo_res + consumo_kwh
						cont_residencial <- cont_residencial + 1
					fim
				senao
					inicio
						se tipo_consumo = 2 entao // Comercial
							inicio
								se consumo_kwh < 100 entao
									inicio
										total_pagar <- (consumo_kwh * 0.25) * 0.8 // Aplica 20% de desconto
									fim
								senao
									inicio
										total_pagar <- consumo_kwh * 0.25
									fim
								total_comercial <- total_comercial + total_pagar
								total_consumo_com <- total_consumo_com + consumo_kwh
								cont_comercial <- cont_comercial + 1
							fim
						senao
							inicio
								se tipo_consumo = 3 entao // Industrial
									inicio
										se consumo_kwh < 200 entao
											inicio
												total_pagar <- (consumo_kwh * 0.10) * 0.8 // Aplica 20% de desconto
											fim
										senao
											inicio
												total_pagar <- consumo_kwh * 0.10
											fim
										total_industrial <- total_industrial + total_pagar
										total_consumo_ind <- total_consumo_ind + consumo_kwh
										cont_industrial <- cont_industrial + 1
									fim
							fim
					fim
				
				// Exibe o valor a pagar para o consumidor atual
				escreva "Consumidor ", id_consumer, " deve pagar R$ ", total_pagar
			fim
	fim
// Calcula a média de consumo para cada tipo de consumidor
se cont_residencial > 0 entao
	inicio
		media_consumo_res <- total_consumo_res / cont_residencial
	fim
senao
	inicio
		media_consumo_res <- 0
	fim
se cont_comercial > 0 entao
	inicio
		media_consumo_com <- total_consumo_com / cont_comercial
	fim
senao
	inicio
		media_consumo_com <- 0
	fim
se cont_industrial > 0 entao
	inicio
		media_consumo_ind <- total_consumo_ind / cont_industrial
	fim
senao
	inicio
		media_consumo_ind <- 0
	fim
// Exibe os resultados finais
escreva "Total de consumo residencial: ", total_consumo_res, " kWh"
escreva "Total de consumo comercial: ", total_consumo_com, " kWh"
escreva "Total de consumo industrial: ", total_consumo_ind, " kWh"
escreva "Média de consumo residencial: ", media_consumo_res, " kWh"
escreva "Média de consumo comercial: ", media_consumo_com, " kWh"
escreva "Média de consumo industrial: ", media_consumo_ind, " kWh"
fim_algoritmo
