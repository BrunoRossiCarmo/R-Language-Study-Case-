#Created on Mon Sep 08 22:52:05 2020

#@author: Bruno

#------------------ Exercises PT.4 ------------------#

#----------------------------------------------------------------------------#
#1 - Crie uma fun��o para calcular o �ndice de diversidade de Simpson dos dados 
#de borrachudos da Chapada Diamantina (spp):

#Carregando os dados:
library("vegan")
spp <- read.table("simu.txt",header = TRUE, encoding = "latin1")


#Fun��o:

Simpson <- function(x){
        row <- nrow(x)
        col <- ncol(x)
        simpson <- numeric(0)
        resu <- numeric(0)
        for(i in 1:row){
                prob <- x[i,]/sum(x[i,])
                resu[i] <- (prob[i])^2 
                simpson[i] <- 1 - sum(resu)
        }
        return(simpson)
}

Simpson(spp[,7:26])
diversity(spp[,7:26],"simpson",MARGIN=1) 

#Resultados batem entre diversidade das esp�cies em cada riacho.

#----------------------------------------------------------------------------#

#2 - Crie uma fun��o para calcular a dist�ncia (dissimilaridade) de Hellinger 
#dos dados de abund�ncia de borrachudos. 

#Fun��o:

Hellinger <- function(x){
        n<-nrow(x)
        Helling<-matrix(NA,n,n)
        for( i in 1:n){
                for(j in 1:n){
                        data1 <- x[i,]
                        data2 <- x[j,]
                        v1 <- sqrt(data1/sum(data1))
                        v2 <- sqrt(data2/sum(data2))
                        Helling[i,j] <- sqrt(sum((v1 - v2)^2))
                        
                }
        }
        return(as.dist(Helling))
}

#Restringi os dados para apenas linhas 1 at� 12 para melhorar visualiza��o:
resultado<-Hellinger(spp[1:12,7:26])
hel.vegan<-vegdist(decostand(spp[1:12,7:26],"hellinger"),"euclid")

#Visualizar e comparar dados:
hel.vegan
resultado

#----------------------------------------------------------------------------#

#3 - Desafio: Calcule o �ndice de Shannon usando apenas 3 linhas de comando e o 
#�ndice de Simpson usando apenas uma linha de comandos. N�o ser� necess�rio 
#criar nenhuma fun��o.

#Criando dados de teste:
dados <- sample(1:10,20, replace = TRUE)

#Shannon:
prop <- dados/sum(dados)
resu <- ifelse(prop>0 ,prop*log(prop),0)
shannon <- -sum(resu)
shannon

#Simpson:
simpson <- 1 - sum((dados/sum(dados))^2)
simpson
