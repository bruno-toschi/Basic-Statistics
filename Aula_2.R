#para fazer uma tabela de distribuição de frequências, precisamos criar um data.frame
#data.frame é o nosso banco de dados.
#precisamos entao criar as colunas com seus respectivos nomes
#precisamos criar objetos
#quando a variável é descritiva, uma integer

library(tidyverse)

Grau_de_instrução <- c("fundamental", "superior", "médio")
Frequência <- c(12, 8, 6)
Proporção <- c(0.3333, 0.5000, 0.1667)
Porcentagem <- Proporção * 100

tabela <- data.frame(Grau_de_instrução, Frequência, Proporção, Porcentagem)

linha_total <- data.frame(
  Grau_de_instrução = "Total",
  Frequência = sum(Frequência),
  Proporção = sum(Proporção),
  Porcentagem = sum(Porcentagem)
)
tabela_final <- rbind(tabela, linha_total)
print(tabela_final)

#rbind junta dois data frame por linhas, 
#quer  dizer, coloca um, depois coloca o outro

Grau_instrução <- c("fundamental", "medio", "superior")
frequencia <- c(650, 1020, 330)
porcentagem <- c(32.50, 51, 16.50)

tabela_frequencia <- data.frame(Grau_instrução, frequencia, porcentagem)
print(tabela_frequencia)

Grau_de_instrução = "Total"
frequencia2 = sum(frequencia)
porcentagem2 = sum(porcentagem)

print(Grau_instrução)
print(frequencia2)
print(porcentagem2)

tabela_linha <- data.frame(Grau_instrução = "Total",
           frequencia = sum(frequencia),
           porcentagem = sum(porcentagem)
           )

rbind(tabela_frequencia,tabela_linha)

#medidas de posicao
mean(10, 25, 30, 40, 50, 6, 7, 8)
valores <- (c(10, 25, 30, 40, 50, 6, 7, 8))
mean (valores)

install.packages("psych")

library(psych)
describe(valores)
print(describe(valores))

view(describe(valores)) #este pacote mostra as estatisticas descritivas

bruno <- (c(26,33,33,44,55,66))

mode (bruno)    

conjunto <- (c(10,10,12,15,22))
mode(conjunto)
tipos <- (c("estudos", "conhecimento"))
mode (tipos)
#mode mostra o tipo de variavel
table(bruno)
table (conjunto)

mediana <- (c(6, 7, 8, 10, 25, 30, 40, 50))
median(mediana)

numero_de_gol <- (c(0,1,2,3,4))
frequencia_de_gol <- (c(7,3,3,1,1))

tabela_frequencia_gol <- data.frame(numero_de_gol, frequencia_de_gol)
print(tabela_frequencia_gol)

View(tabela_frequencia_gol)

table(tabela_frequencia_gol)

View(table(tabela_frequencia_gol))


average <- (sum(numero_de_gol*frequencia_de_gol))/sum(frequencia_de_gol)

print(average)

max(frequencia_de_gol) #portanto moda 0

dados_expandido <- rep(numero_de_gol, frequencia_de_gol)
#tem que usar o rep para repetir
print(dados_expandido)
mediana <- median(dados_expandido)
print(mediana)

intervalos <- (c("0-4","5-9","10-14","15-19","20-24")) #para intervalo, usar dois pontos
frequencias <- (c(3,5,7,4,6))

tabela_frequencia <- data.frame(
  Intervalo = intervalos,
  Frequência = frequencias
)

print(tabela_frequencia)
View(tabela_frequencia)

# Intervalos como texto (para visualização apenas)
intervalos <- c("0–4", "5–9", "10–14", "15–19", "20–24")
intervalos_reais <- c(0:4, 5:9, 10:14, 15:19, 20:24)

# Frequências
frequencias <- c(3, 5, 7, 4, 6)

# Pontos médios de cada intervalo
ponto_medio <- c(2, 7, 12, 17, 22)

# Média ponderada (frequência × ponto médio)
media <- sum(ponto_medio * frequencias) / sum(frequencias)

# Resultado
print(media)

table((frequencias))
max(frequencias) #moda intervlo 10-14
#mediana

# Dados
frequencias <- c(3, 5, 7, 4, 6)
lim_inferior <- c(0, 5, 10, 15, 20)
amplitude <- 5

# Frequência acumulada
freq_acumulada <- cumsum(frequencias)

# Total de observações
n <- sum(frequencias)

# Localizar classe mediana
classe_mediana_index <- which(freq_acumulada >= n/2)[1]

# Parâmetros para fórmula
L <- lim_inferior[classe_mediana_index]
F <- ifelse(classe_mediana_index == 1, 0, freq_acumulada[classe_mediana_index - 1])
f <- frequencias[classe_mediana_index]
h <- amplitude

# Cálculo
mediana <- L + ((n/2 - F) / f) * h
print(mediana)
