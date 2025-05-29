algoritmo
declare
    num_amostra numerico
    carbono, dureza, tracao numerico
    grau numerico
escreva "Informe o número da amostra (ou um valor negativo para terminar): "
leia num_amostra
enquanto num_amostra >= 0 faca
inicio
    escreva "Informe o conteúdo de carbono (em %): "
    leia carbono
    escreva "Informe a dureza Rokwell: "
    leia dureza
    escreva "Informe a resistência à tração (em psi): "
    leia tracao
    se carbono < 7 e dureza > 50 e tracao > 80000 entao
        inicio
            grau <- 10
        fim
    senao
        inicio
            se carbono < 7 e dureza > 50 entao
                inicio
                    grau <- 9
                fim
            senao
                inicio
                    se carbono < 7 entao
                        inicio
                            grau <- 8
                        fim
                    senao
                        inicio
                            grau <- 7
                        fim
                fim
        fim
    escreva "A amostra número ", num_amostra, " obteve o grau: ", grau
    escreva "Informe o número da amostra (ou um valor negativo para terminar): "
    leia num_amostra
fim
fim_algoritmo
