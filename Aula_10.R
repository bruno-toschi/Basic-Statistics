library(ggplot2)
install.packages("scales")
library(scales)

# 1. Criar dados no formato adequado
dado <- data.frame(
  face = 1:6,                  # Valores da variável aleatória
  probabilidade = rep(1/6, 6)  # Probabilidade de cada face
)

# 2. Gráfico de probabilidade discreta
ggplot(dado, aes(x = factor(face), y = probabilidade)) +
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +  # Barras com altura fixa
  geom_text(aes(label = scales::percent(probabilidade)),  # Mostrar porcentagens
            vjust = -0.5, size = 4) +
  labs(title = "Distribuição de Probabilidade de um Dado Justo",
       x = "Face do Dado",
       y = "Probabilidade") +
  scale_y_continuous(labels = scales::percent,  # Eixo Y em porcentagem
                     limits = c(0, 0.3)) +     # Limites do eixo Y
  theme_minimal()

       

ggplot(dado, aes(x = factor(face), y = probabilidade)) + #a primeira linha fornece as informacoes, apenas com ela nao eh possivel plotar graficos
  geom_bar(stat = "identity", fill = "skyblue", color = "black") +
             geom_text(aes(label = scales::percent(probabilidade)),  # Mostrar porcentagens
                       vjust = -0.5, size = 4) +
             labs(title = "Distribuição de Probabilidade de um Dado Justo",
                  x = "Face do Dado",
                  y = "Probabilidade") +
             scale_y_continuous(labels = scales::percent,  # Eixo Y em porcentagem
                                limits = c(0, 0.3)) +     # Limites do eixo Y
             theme_minimal()

#vamos criar um para um lançamento de uma moeda
lancamento_moeda <- c("c","k")
prob_moeda <- rep(1/2, 2)
#distribuicao dos resultados
distribuicao_moeda <- data.frame (lancamento_moeda, prob_moeda)
print(distribuicao_moeda)           
# 2. Gráfico de probabilidade discreta
ggplot(distribuicao_moeda, aes(x = lancamento_moeda, y = prob_moeda)) +
  geom_col(fill = c("gold", "gray70"), width = 0.6) +  # Cores diferentes para cada face
  geom_text(aes(label = percent(prob_moeda)),  # Mostrar porcentagem
            position = position_dodge(width = 0.9),
            vjust = -0.5, size = 5, fontface = "bold") +
  labs(title = "Distribuição de Probabilidade de uma Moeda Justa",
       x = "Face da Moeda",
       y = "Probabilidade") +
  scale_y_continuous(labels = percent, limits = c(0, 0.7)) +  # Limites ajustados
  theme_minimal(base_size = 14) +
  theme(plot.title = element_text(hjust = 0.5, size = 16, face = "bold"),
        axis.title = element_text(face = "bold"),
        panel.grid.major.x = element_blank())

#vamos criar um grafico da distribuicao para uma moeda lancada quatro vezes
library(ggplot2)
library(scales)  # Para formatação de porcentagens

# Parâmetros da distribuição
n_lancamentos <- 4
prob_cara <- 0.5

# Criar data frame com todas as possibilidades
dados <- data.frame(
  k = 0:n_lancamentos,  # Número possível de caras (0 a 4)
  prob = dbinom(0:n_lancamentos, size = n_lancamentos, prob = prob_cara)
)

# Formatar rótulos para eixo X
dados$k_label <- paste0(dados$k, " caras")

# Criar gráfico
ggplot(dados, aes(x = factor(k_label, levels = unique(k_label)), y = prob)) +
  geom_col(fill = "skyblue", width = 0.7) +
  geom_text(aes(label = percent(prob, accuracy = 0.1)), 
            vjust = -0.5, size = 5, fontface = "bold") +
  labs(title = "Número de Caras em 4 Lançamentos de Moeda",
       subtitle = "Distribuição Binomial (p = 0.5)",
       x = "Resultado",
       y = "Probabilidade") +
  scale_y_continuous(labels = percent, limits = c(0, 0.4)) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5),
    axis.title = element_text(face = "bold"),
    panel.grid.major.x = element_blank()
  )

library(ggplot2)
install.packages("patchwork")
library(patchwork)  # Para combinar gráficos

# Parâmetros fixos
p <- 0.5  # Probabilidade de sucesso (moeda justa)
ns <- c(5, 10, 30, 100)  # Valores de n a comparar

# Função para gerar os gráficos
gerar_grafico <- function(n) {
  # Calcular distribuição binomial
  k <- 0:n
  prob_binom <- dbinom(k, size = n, prob = p)
  
  # Criar data frame
  df <- data.frame(k = k, binom = prob_binom)
  
  # Calcular curva normal aproximada
  mu <- n * p
  sigma <- sqrt(n * p * (1 - p))
  df$normal <- dnorm(k, mean = mu, sd = sigma)
  
  # Gerar gráfico
  ggplot(df, aes(x = k)) +
    geom_col(aes(y = binom), fill = "skyblue", alpha = 0.7) +
    geom_line(aes(y = normal), color = "red", linewidth = 1.2) +
    labs(title = paste("n =", n),
         x = "Número de Sucessos (k)",
         y = "Probabilidade/Densidade") +
    theme_minimal()
}

# Gerar todos os gráficos
graficos <- lapply(ns, gerar_grafico)

# Combinar gráficos
(graficos[[1]] | graficos[[2]]) / (graficos[[3]] | graficos[[4]])
