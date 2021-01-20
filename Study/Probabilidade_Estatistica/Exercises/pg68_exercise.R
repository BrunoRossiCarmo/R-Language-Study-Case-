#Bruno Rossi Carmo
#27/10/2020
#brunorossicarmo@usp.br

#Pag.68: Noções de Probabildade e Estatística
#-Marcos Nascimento Magalhães/Antonio Carlos Pedroso de Lima.
#www.ime.usp.br/~noproest

#Diretórios:
dir.main <- "C:\\Users\\bruno\\Desktop\\Usp\\Grad\\Est\\Files" #Coloque seu diretorio do arquivo (Separe com "\\")
setwd(dir.main)

#|-----------------------------------------------Ex.30-----------------------------------------------|
areas <- read.table("areas.txt", header = T)
num_total <- length(areas$Id) #Número total de apartamentos.
andares <- table(areas$Andar) #Números de Apartamento por Andar.
blocos <- table(areas$Bloco)  #Número de Apartamentos por Blocos.
total <- length(areas[areas$Rachadura==1|areas$Infiltr==1,1])  #Áreas com rachadura ou infiltração.
intersect <- length(areas[areas$Rachadura==1 & areas$Infiltr==1,1]) #Áreas com rachadura e infiltração.


#A) Temos que definir probabilidade de um apartamento escolhido ser entre andar 4 e andar 7.
    # P(6U5) = p(6) + p(5) - p(6???5), uma vez que p(6???5) = 0.
P6u5 <- (andares[1]/num_total)+(andares[1]/num_total)*100
cat("O valor da probabilidade é", P6u5, "%")

#B) Temos que calcular a probabilidade do apartamento estar no bloco B.
    #P(B) = P(B)/P(??)
PB <- (blocos[2]/num_total)*100
cat("O valor da probabilidade é", PB, "%")

#C) Calcular probabilidade do apartamento ter rachadura ou infiltração.
    #P(RUI), onde R é rachadura e I é infiltração.
    #P(RUI) = P(R) + P(I) - P(R???I)
PRUI <- ((total/num_total))*100
cat("O valor da probabilidade é", PRUI, "%")

#D) Agora temos que o apartamento está situado no bloco B. Logo, a P(6U5)=
P6U5B <- (length(areas[areas$Bloco=="B" & (areas$Andar==5|areas$Andar==6), 3]))/length(areas[areas$Bloco=="B",3]) *100
cat("O valor da probabilidade é", P6U5B, "%")


#|-----------------------------------------------Ex.31-----------------------------------------------|
cancer <- read.table("cancer.txt", header = T)

#Variaveis:
total <- length(cancer$Ident)
gp <- table(cancer$Grupo)

#A) Qual a probabilidade do paciente ser diagnosticado em cada diagnóstico específico?
    #1-P(1)
P1 <- (gp[1]/total)*100
cat("O valor da probabilidade é", P1, "%")
    #1-P(2)
P2 <- (gp[2]/total)*100
cat("O valor da probabilidade é", P2, "%")
    #1-P(3)
P3 <- (gp[3]/total)*100
cat("O valor da probabilidade é", P3, "%")
    #1-P(4)
P4 <- (gp[4]/total)*100
cat("O valor da probabilidade é", P4, "%")


#B) Queremos calcular a probabilidade de não ter a doença. Deste modo, temos que saber todas as possibilidades com Falso Positivo (4) e Negativo (2).
      #P(N)=(P(2))U(P(4))=P(2)+P(4)
PN <- (P2 + P4)
cat("O valor da probabilidade é", PN, "%")
