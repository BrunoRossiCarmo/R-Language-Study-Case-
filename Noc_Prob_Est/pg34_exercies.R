#Bruno Rossi Carmo
#03/01/21
#brunorossicarmo@usp.br

dir.main <- "C:\\Users\\Your_Path"
setwd(dir.main)

#Ex1(PG.34):

var <- c("Id","Turma","Gênero","Idade","Alt","Peso","Filhos","Fuma","Toler","Exer","Cine")
id<- c(seq(1:10))
listraw <- list(id,var)
raw_data <- matrix(rep(0,110),ncol=11,nrow=10)
dimnames(raw_data) <- listraw

?readline
#Escrever arquivo de dados:
write.table(raw_data,file = "arquivo_de_estudo.txt", sep = "\t",row.names=T,col.names=NA)
arquivo <- read.table("arquivo_de_estudo.txt", header = T)

#Functions:
variavel <- function(n){
        integer <- readline(prompt = "É num? (T/F): ")
        respo <- ifelse(integer=="T",1,0)
        mat <- numeric(0)
        for(i in 1:n){
                mat[i] <- readline(prompt = "Adicione o Valor: ")
        }
        if(respo==T){
                mat <- as.double(mat)
        }
        return(mat)
}

#Organizar:
arquivo$Id <- seq(1:10)
arquivo$Turma <- c(rep("A",10))
arquivo$Gênero <-c("F","F","M","M","F","M","F","F","F","M")
arquivo$Idade <- variavel(10)
arquivo$Alt <- variavel(10)
arquivo$Peso <- variavel(10)
arquivo$Filhos <- variavel(10)
arquivo$Fuma <- variavel(10)
arquivo$Toler <- variavel(10)
arquivo$Exer <- variavel(10)
arquivo$Cine <- variavel(10)

#VISUALZAR
write.table(arquivo,file = "arquivo_de_estudo_organizado.txt", sep = "\t",row.names=T,col.names=NA)

#Observação das Variáveis:
hist(arquivo$Peso, breaks=4, col=3, main = "Histograma de Frequencias de Peso",xlab = "Peso")
boxplot(arquivo$Peso)

hist(arquivo$Alt, breaks=4, col=3, main = "Histograma de Frequencias de Alt",xlab = "Alt")
boxplot(arquivo$Alt)

#Valor de Assimetrias
Bowley <- function(Q1,Q3,MD){
        Bow <- ((Q3 - MD)-(MD-Q1))/(Q3-Q1)
        if(Bow<0){
                cat("Possui Assimetria Negativa de ",Bow,"\n")
        }
        else if(Bow==0){
                cat("Possui Simetria de ", Bow,"\n")
        }
        else{
                cat("Possui Assimetria Positiva de ",Bow,"\n")
        }
}


#Peso:
summary(arquivo$Peso)
Bowley(39.62,75.75,58.75)

#Alt
summary(arquivo$Alt)
Bowley(1.613,1.780,1.725)

#Idades_Sep:
table(arquivo$Idade)
men15 <- subset(arquivo, Idade<15)
mai15 <- subset(arquivo, Idade>=15)
par(mfrow = c(1,2))
barplot(mai15$Idade)
barplot(men15$Idade)

#Q-Q Plot:
par(mfrow = c(1,1))
?plot
plot(x=mai15$Peso,y=men15$Peso, 
     main = "Q-Q PLOT", xlab = "Peso das Amostras >15 anos", ylab = "Peso das Amostras <15 anos",
     pch = c(19,19))
     lines(x = c(0:80), y = c(0:80), col="red", lwd=2)
     
