##----------------- Functions and Statistics ----------------#
#-----Pt.1-----#

cars #data frame from R.
nrow(subset(cars, speed>10))
frenagem <- lm(speed~dist, data =cars) #Regression.
summary(frenagem) #All information about the regression.
names(frenagem) #All products about the regression.
frenagem$residuals #Shows the residuals of the regression.
summary(cars) #Shows statistical information.

#-----Pt.2-----#

moeda <- c("CARA", "COROA")

        sorteio <-function(x,n){
               valor<- sample(x,n,replace = TRUE)
               table(valor)
        } 

sorteio(moeda,10)
sorteio(moeda,1000)

#-----Pt.3-----#

media<- function(x){
        result = sum(x)/length(x)
        return(result)
}

values <- sample(1:10,15,replace = TRUE)
media(values)
mean(values)
#-----Pt. 4-----#

resu<-numeric(0)
for (i in 1:10){
        resu[i] = i^2
}
resu

#--------------#

plot(0:10,0:10, type="n")
for(i in 1:10){
        points(i,i,pch = 19)
        Sys.sleep(1)
}

#-------------#

vec <- c(1,1)

Fibonacci <- function(vec,max){
        for(i in 3:max){
                vec[i] = vec[i-1]+vec[i-2]
        }
        return(vec)
}
Fibonacci(vec,12)

#-------------#

loteria <- function(col){
        num = matrix(NA, 6, col)
        for(i in 1:col){
                num[,i] = sample(1:60, 6)
        }
        return(num)
}
loteria(5)

#-----Pt. 5-----#

Shannon <- function(x){
        res <- numeric(0)
        for(i in 1:length(x)){
                if(x[i]>0){
                        prob <- x[i]/sum(x)
                        res[i] <- prob*log(prob)
                }
                else{
                        res[i] = 0 #We need to use else because without him, "for" is iterate more than really needs.
                }
        }
        shan <- - sum(res)
        return(shan)
}
dados<-c(20,43,21,14,34,54)
Shannon(dados)
magur<-c(235,218,192,0,20,11,11,8,7,4,3,2,2,1,1)
Shannon(magur)

Shannon <- function(x){
        res <- numeric(0)
        r <- nrow(x)
        v <- ncol(x)
        shan <- numeric(0)
        for(i in 1:r){
                prob <- x[i,]/sum(x[i,])
                for(k in 1:v){
                        res[k] <- if(prob[k]>0) {prob[k]*log(prob[k])}
                        else{0}
                }

                shan[i] <- - sum(res)
        }
        return(shan)
}

matrix <- matrix(sample(1:10,9),3,3)
matrix
Shannon(matrix)
library(vegan)
diversity(matrix,"shannon",MARGIN = 1)

#-----Pt.6 -----#

Jaccard <- 
        function(x){
        if(any(x>1)){
                stop("Erro: é preciso fornecer uma tabela com dados de +
presença e ausência")
        }
        n <- nrow(x)
        jac <- matrix(NA,n,n)
        colnames(jac)<-rownames(x)
        rownames(jac)<-rownames(x)
        for(i in 1:n){
                for(j in 1:n){
                        a<-sum(x[i,]==1 & x[j,]==1)
                        b<-sum(x[i,]==1 & x[j,]==0)
                        c<-sum(x[j,]==1 & x[i,]==0)
                        jac[i,j]<- a /(a+b+c) 
                }
        }
        return(as.dist(jac))
}
setwd("C:\\Users\\bruno\\Desktop\\Usp\\Laboratorio\\CRID\\Codigos\\R-Apostia")
mol <- read.table("moluscos.txt", header = TRUE)
mol.abund <-ifelse(mol[,1:6]>=1,1,0)
mol.abund
Jaccard(mol.abund)

Curtis <- function(x){
        n <- nrow(x)
        Bray <- matrix(NA,n,n)
        for(i in 1:n){
                for(k in 1:n){
                        Bray[i , k] <- ((sum(abs(x[i,] -  x[k,])))/(sum(x[i,] + x[k,])))
                }
        }
        return(Bray)
}

Curtis(mol.abund)
