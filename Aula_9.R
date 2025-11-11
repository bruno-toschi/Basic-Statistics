#probabilidade condicional
fala_ingles <- c(92,101)
fala_alemao <- c(35,33)
fala_frances <- c(47,52)
grupo_linguas <- data.frame(fala_ingles, fala_alemao, fala_frances)
print(grupo_linguas)
row.names(grupo_linguas) <- (c("homens", "mulheres"))
print(grupo_linguas)
