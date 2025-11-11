dados <- (c(4,3,2,4,1,2))
boxplot(dados)
#conjuntos
install.packages("VennDiagram")
conjunto1 <- paste
paste0(1:12)
paste(1:12)
as.character(1:12)
(nth <- paste0(1:12, c("st", "nd", "rd", rep("th", 9))))
set1 <- paste(rep("word_" , 200) , sample(c(1:1000) , 200 , replace=F) , sep="")
set2 <- paste(rep("word_" , 200) , sample(c(1:1000) , 200 , replace=F) , sep="")
set3 <- paste(rep("word_" , 200) , sample(c(1:1000) , 200 , replace=F) , sep="")

install.packages("ggvenn")
library(ggvenn)

# Definir os conjuntos como strings
diagrama_a <- (c(1,2,3,4,8))
diagrama_b <- (c(3, 4, 5,6))

dados <- list(
  A = diagrama_a,
  B = diagrama_b
)

# Gerar diagrama com elementos visíveis
ggvenn(dados, 
       fill_color = c("blue", "red"),
       stroke_size = 0.5,
       set_name_size = 4,
       show_percentage = FALSE)
