#media ponderada
valores <- (c(8,8))
pesos <- (c(4,6))
ponderação <- sum(valores * pesos)
denominador <- sum(pesos)
media_ponderada <- ponderação/denominador
print(media_ponderada)
#novos valores
valores_novos <- (c(7,9))
pesos_novos <- (c(4, 6))
ponderação_nova <- sum(valores_novos*pesos_novos)
denominador_novo <- sum(pesos_novos)
media_ponderada_novos_valores <- ponderação_nova/denominador_novo
print(media_ponderada_novos_valores)
# media geometrica
library(psych)
geometric.mean(notas)
notas <- (c(4,10,16,24))
notas_multiplicadas <- (c(4*10*16*24))
media_geometrica_notas <- notas_multiplicadas^(1/4)
print(media_geometrica_notas)
#outro exemplo
conjunto <- (c(3,5,7))
conjunto_multiplicado <- (c(3*5*7))
media_geometrica_conjunto <- conjunto_multiplicado^(1/3)
print(media_geometrica_conjunto)
#medidas de dispersao
x <- (c(3,4,5,6,7))
var(x) # A VARIANCIA É AMOSTRAL!
sd(x)
y <- (c(1,3,6,7,9))
var(y)
sd(y)
z <- (c(5,5,5,5,5))
var(z)
sd(z)
w <- (c(3,5,5,7,5))
var(w)
sd(w)
