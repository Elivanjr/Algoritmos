algoritmo
declare
	sexo, olhos, cabelos literal
	idade, maior_idade, total_fem, total_fem_criterio, perc_fem_criterio numerico
// Inicialização das variáveis
maior_idade <- 0
total_fem <- 0
total_fem_criterio <- 0
idade <- 0
enquanto idade <> -1 faca
	inicio
		escreva "Informe a idade do habitante (ou -1 para terminar): "
		leia idade
		se idade <> -1 entao
			inicio
				escreva "Informe o sexo (M para masculino, F para feminino): "
				leia sexo
				escreva "Informe a cor dos olhos (A - azuis, V - verdes, C - castanhos): "
				leia olhos
				escreva "Informe a cor dos cabelos (L - louros, C - castanhos, P - pretos): "
				leia cabelos
				// Verifica a maior idade
				se idade > maior_idade entao
					inicio
						maior_idade <- idade
					fim
				// Verifica se o habitante é feminino, entre 18 e 35 anos, com olhos verdes e cabelos louros
				se sexo = "F" e idade >= 18 e idade <= 35 e olhos = "V" e cabelos = "L" entao
					inicio
						total_fem_criterio <- total_fem_criterio + 1
					fim
				// Conta o total de habitantes do sexo feminino
				se sexo = "F" entao
					inicio
						total_fem <- total_fem + 1
					fim
			fim
	fim
// Calcula a porcentagem de mulheres com as características solicitadas
se total_fem > 0 entao
	inicio
		perc_fem_criterio <- (total_fem_criterio * 100) / total_fem
	fim
senao
	inicio
		perc_fem_criterio <- 0
	fim
// Exibe os resultados
escreva "A maior idade dos habitantes é: ", maior_idade
escreva "A porcentagem de mulheres entre 18 e 35 anos, com olhos verdes e cabelos louros é: ", perc_fem_criterio, "%"
fim_algoritmo
