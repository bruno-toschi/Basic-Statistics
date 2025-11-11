# Definir os resultados possíveis de uma moeda
lados_moeda <- c("C", "K")  # C = Cara, K = Coroa

# Gerar todas as combinações possíveis
espaco_amostral_moedas <- expand.grid(
  lance1 = lados_moeda,
  lance2 = lados_moeda,
  lance3 = lados_moeda,
  stringsAsFactors = FALSE
)

# Visualizar o espaço amostral
print(espaco_amostral_moedas)

#espaco amostral
espaco_amostral <- nrow(espaco_amostral_moedas)
print(espaco_amostral)

#eventos duas caras
evento_pelomenos_1cara <- rowSums(espaco_amostral_moedas == "C")

evento_pelomenos_2caras <- sum(evento_pelomenos_1cara >= 2)
print(evento_pelomenos_2caras)

#prob pelo menos 2 caras
prob_pelo_menos_2caras <- evento_pelomenos_2caras/espaco_amostral
print(prob_pelo_menos_2caras)

#exatamente 2 caras
evento_exatamente_2caras <- sum(evento_pelomenos_1cara == 2) # dois iguais eh igual, um igual eh atribuir valor
print(evento_exatamente_2caras)

#prob exatamente 2 caras
prob_exatamente_2caras <- evento_exatamente_2caras/espaco_amostral
print(prob_exatamente_2caras)

#dois dados sao lancados simultaneamente. 
dado1 <- seq(1,6)
dado2 <- seq(1,6)

espaco_amostral_dados <- expand.grid(
  primeiro_lancamento = dado1,
  segundo_lancamento = dado2,
  stringsAsFactors = FALSE
)
print(espaco_amostral_dados)

#espaco amostral dados
n_lancamento_dados <-nrow(espaco_amostral_dados)
print(n_lancamento_dados)

#adicionar coluna com a soma dos dois dados
espaco_amostral_dados$soma <- espaco_amostral_dados$primeiro_lancamento + espaco_amostral_dados$segundo_lancamento
print(espaco_amostral_dados$soma)
#agora temos a soma e queremos aqueles iguais a 7
soma7 <- sum(espaco_amostral_dados$soma == 7)
print (soma7)
#probabilidade de soma 7
prob_soma7 <- soma7/n_lancamento_dados
print(prob_soma7)

#questao bndes
prob_z <- 1/5
prob_y <- 2* prob_z
prob_w <- 2*prob_z
prob_y_ou_z <- prob_z + prob_y
print(prob_y_ou_z)
