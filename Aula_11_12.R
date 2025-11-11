#permutacoes e combinacoes
factorial(5)
factorial(4)  
factorial(9)/factorial(7)
#permutacao de pepper
#3 p, 2 e e 1 r e 6 letras ao todo
factorial(6)/(factorial(3)*factorial(2))
#distribuicao binomial
#jogar moeda 10 e obter 5 caras
dbinom(5, 10, 0.5) #eh a densidade que calcula a probabilidade acumulada ate certo ponto
#quero calcular a acumulada desde k = 0 ate k=5 em n=10 lancamento de moedas e k eh o numero de sucessos - cara
dbinom(0,10,0.5)
dbinom(1,10,0.5)
dbinom(2,10,0.5)
dbinom(3,10,0.5)
dbinom(4,10,0.5)

funcao_acumulada <- dbinom(0,10,0.5) + dbinom(1,10,0.5) + dbinom(2,10,0.5) + dbinom(3,10,0.5) + dbinom(4,10,0.5) + dbinom(5, 10, 0.5)
print(funcao_acumulada)

#vamos fazer de uma maneira automatizada
# Probabilidade acumulada P(X ≤ 5) para Binomial(n=10, p=0.5)
prob_acumulada <- pbinom(5, size = 10, prob = 0.5)

# Resultado
print(paste("Probabilidade acumulada P(X ≤ 5) =", round(prob_acumulada, 4)))

# Sua abordagem (somatório manual)
manual <- sum(dbinom(0:5, 10, 0.5))

# Abordagem com função acumulada
auto <- pbinom(5, 10, 0.5)

# Teste de igualdade
identical(manual, auto)  # Retorna TRUE

# Valor manual
print(manual, digits = 20)


# Valor automático
print(auto, digits = 20)


# Diferença infinitesimal!

# Parâmetros
n <- 10
p <- 0.5

# 1. Probabilidade exata de 5 caras
prob_exata <- dbinom(5, n, p)

# 2. Probabilidade de até 5 caras
prob_acumulada <- pbinom(5, n, p)

# 3. Probabilidade de mais de 5 caras
prob_mais_que_5 <- 1 - pbinom(5, n, p)

# 4. Probabilidade entre 3 e 5 caras (inclusive)
prob_entre_3_e_5 <- pbinom(5, n, p) - pbinom(2, n, p)

# Resultados
cat("P(X = 5):", prob_exata, "\n")
cat("P(X ≤ 5):", prob_acumulada, "\n")
cat("P(X > 5):", prob_mais_que_5, "\n")
cat("P(3 ≤ X ≤ 5):", prob_entre_3_e_5, "\n")

library(ggplot2)

dados_binom <- data.frame(
  k = 0:10,
  prob = dbinom(0:10, 10, 0.5),
  acumulada = pbinom(0:10, 10, 0.5)
)

# Gráfico de densidade (PMF)
ggplot(dados_binom, aes(x = k, y = prob)) +
  geom_col(fill = "skyblue") +
  geom_point() +
  labs(title = "Distribuição Binomial (n=10, p=0.5)",
       x = "Número de Sucessos (k)",
       y = "P(X = k)")

# Gráfico de distribuição acumulada (CDF)
ggplot(dados_binom, aes(x = k, y = acumulada)) +
  geom_step() +
  geom_point() +
  labs(title = "Função de Distribuição Acumulada (CDF)",
       x = "Número de Sucessos (k)",
       y = "P(X ≤ k)")
