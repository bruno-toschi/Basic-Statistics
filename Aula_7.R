#araraquara
as <- 4/52
reis <- 4/52
as_ou_reis <- as + reis
print(as_ou_reis)
install.packages("MASS")
library(MASS)
fractions(as_ou_reis)
#cespe/iff
amostra_alunos <- 45
alunos_esportistas <- 10
um_aluno_retirado <- alunos_esportistas/amostra_alunos
print(um_aluno_retirado)
segundo_aluno_retirado <- ((alunos_esportistas - 1)/(amostra_alunos-1))
dois_alunos_retirados <- um_aluno_retirado*segundo_aluno_retirado
print(dois_alunos_retirados)
fractions(dois_alunos_retirados)
#fcc
homens <- c(30, 40, 70)
mulheres <- c(20,40,50)
total <- homens + mulheres
tabela_profissoes <- data.frame(homens, mulheres, total)
print(tabela_profissoes)
rownames(tabela_profissoes) <- c("Economista", "Administrador", "Contador")
print(tabela_profissoes)

total_geral <- data.frame(
  homens = sum(homens),
  mulheres = sum(mulheres),
  total = sum(total)
)
rownames(total_geral) <- "Total"
# Juntar a linha de totais à tabela
tabela_final <- rbind(tabela_profissoes, total_geral)
# Ver
print(tabela_final)
#evento E - ser economista. Seja H ser homem. Probabilidade de E ou H
ser_economista <- 50/250
ser_homem <- 140/250
ser_economista_e_homem <- 30/250
ser_economista_ou_homem <- ser_economista + ser_homem - ser_economista_e_homem
print(ser_economista_ou_homem)
#olhar deep. ele fez de novo mais otimizado.
# Extrair valores diretamente da tabela
total_geral <- tabela_final["Total", "total"]  # 250
# 1. Probabilidade de ser economista (E)
prob_E <- tabela_final["Economista", "total"] / total_geral

# 2. Probabilidade de ser homem (H)
prob_H <- tabela_final["Total", "homens"] / total_geral

# 3. Probabilidade de ser homem E economista (E ∩ H)
prob_E_e_H <- tabela_final["Economista", "homens"] / total_geral

# 4. Probabilidade de ser homem OU economista (E ∪ H)
prob_E_ou_H <- prob_E + prob_H - prob_E_e_H

# Resultado
cat("Probabilidade de ser economista OU homem:", prob_E_ou_H, "(", prob_E_ou_H*100, "%)\n")
