#associação entre variáveis quantitativas
x <- (c(20,25,30,35,40))
y <- (c(80, 85, 90, 95, 100))
cov(x,y)
a <- (c(100, 110, 150, 120, 100, 140))
b <- (c(20,25,35,28,40,32))
cov(a,b)
lucro <- data.frame(lucro = a, receita = b)

ggplot(data = lucro, aes(x = receita, y = lucro)) +
  geom_point(size = 3, color = "steelblue") +  # pontos de dispersão
  labs(
    title = "Relação entre Receita e Lucro",
    subtitle = paste("Covariância:", round(cov(a, b), 2)),
    x = "Receita (b)",
    y = "Lucro (a)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 10, face = "italic")
  )
#um exemplo para correlacao
pib <-(c(200, 180, 160, 140, 120))
desemprego <- (c(10, 12, 14, 16, 18))
lei_de_okun <- data.frame(pib, desemprego)
cor(pib, desemprego)
#vamos fazer um grafico
ggplot(data = lei_de_okun, aes(x = pib, y = desemprego))+
  geom_point(size = 2, color = "darkgreen") +
  labs(
    title = "Lei de Okun",
    x = "PIB",
    y = "Desemprego"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 10, face = "italic")
  )
