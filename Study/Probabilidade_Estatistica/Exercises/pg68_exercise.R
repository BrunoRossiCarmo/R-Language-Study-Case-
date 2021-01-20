#Bruno Rossi Carmo
#27/10/2020
#brunorossicarmo@usp.br

#Pag.68: No��es de Probabildade e Estat�stica
#-Marcos Nascimento Magalh�es/Antonio Carlos Pedroso de Lima.
#www.ime.usp.br/~noproest

#Diret�rios:
dir.main <- "C:\\Users\\bruno\\Desktop\\Usp\\Grad\\Est\\Files" #Coloque seu diretorio do arquivo (Separe com "\\")
setwd(dir.main)

#|-----------------------------------------------Ex.30-----------------------------------------------|
areas <- read.table("areas.txt", header = T)
num_total <- length(areas$Id) #N�mero total de apartamentos.
andares <- table(areas$Andar) #N�meros de Apartamento por Andar.
blocos <- table(areas$Bloco)  #N�mero de Apartamentos por Blocos.
total <- length(areas[areas$Rachadura==1|areas$Infiltr==1,1])  #�reas com rachadura ou infiltra��o.
intersect <- length(areas[areas$Rachadura==1 & areas$Infiltr==1,1]) #�reas com rachadura e infiltra��o.


#A) Temos que definir probabilidade de um apartamento escolhido ser entre andar 4 e andar 7.
    # P(6U5) = p(6) + p(5) - p(6???5), uma vez que p(6???5) = 0.
P6u5 <- (andares[1]/num_total)+(andares[1]/num_total)*100
cat("O valor da probabilidade �", P6u5, "%")

#B) Temos que calcular a probabilidade do apartamento estar no bloco B.
    #P(B) = P(B)/P(??)
PB <- (blocos[2]/num_total)*100
cat("O valor da probabilidade �", PB, "%")

#C) Calcular probabilidade do apartamento ter rachadura ou infiltra��o.
    #P(RUI), onde R � rachadura e I � infiltra��o.
    #P(RUI) = P(R) + P(I) - P(R???I)
PRUI <- ((total/num_total))*100
cat("O valor da probabilidade �", PRUI, "%")

#D) Agora temos que o apartamento est� situado no bloco B. Logo, a P(6U5)=
P6U5B <- (length(areas[areas$Bloco=="B" & (areas$Andar==5|areas$Andar==6), 3]))/length(areas[areas$Bloco=="B",3]) *100
cat("O valor da probabilidade �", P6U5B, "%")


#|-----------------------------------------------Ex.31-----------------------------------------------|
cancer <- read.table("cancer.txt", header = T)

#Variaveis:
total <- length(cancer$Ident)
gp <- table(cancer$Grupo)

#A) Qual a probabilidade do paciente ser diagnosticado em cada diagn�stico espec�fico?
    #1-P(1)
P1 <- (gp[1]/total)*100
cat("O valor da probabilidade �", P1, "%")
    #1-P(2)
P2 <- (gp[2]/total)*100
cat("O valor da probabilidade �", P2, "%")
    #1-P(3)
P3 <- (gp[3]/total)*100
cat("O valor da probabilidade �", P3, "%")
    #1-P(4)
P4 <- (gp[4]/total)*100
cat("O valor da probabilidade �", P4, "%")


#B) Queremos calcular a probabilidade de n�o ter a doen�a. Deste modo, temos que saber todas as possibilidades com Falso Positivo (4) e Negativo (2).
      #P(N)=(P(2))U(P(4))=P(2)+P(4)
PN <- (P2 + P4)
cat("O valor da probabilidade �", PN, "%")