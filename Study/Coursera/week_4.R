##----------------- Data Science ----------------#
#-----Pt.1-----#
#Change the directory: 
setwd("C:\\Users\\bruno\\Desktop\\Usp\\Laboratorio\\CRID\\Codigos\\R-Apostia")

#Open Data Frame:
monkey <- read.table("Pasta1.txt", header = TRUE)
monkey[1,]
monkey[1:3,]

#Creating Data Frames:
aa <- c(1,2,3)
bb <- c(4,5,6)
cc <- c("a","b","c","d","e","f")
data.frame(aa,bb,cc)

#Attach:
attach(monkey) #Now we can call every attribute.
monkey
stripchart(Macacos~Reserva, pch = 19, vertical = TRUE,at=c(1.25,1.75))
plot(Macacos,Frutas, col = c(1,7), pch = 19)
detach(monkey)

#Dollar sign:
plot(monkey$Macaco, monkey$Frutas)
stripchart(monkey$Macacos~monkey$Reserva)
#dataframe$attribute#
monkey[order(monkey$Frutas),]
monk <- monkey[order(monkey$Frutas),]
monk <- monk[order(monk$Macacos),]
monk

#Mean in DataFrame:
mean(monkey$Macacos)
Mon <- subset(monkey, Frutas> 10, select = Macacos)
na <- is.na(Mon)
Mon <- Mon[!na]
mean(Mon)

#Specify like Subset:
#tapply(data,group,function)
tapply(monkey$Macacos,monkey$Reserva, mean)
tapply(monkey$Frutas, monkey$Reserva, mean)

#Operations:
mol <- read.table("moluscos.txt", header = TRUE)
mol
sum
sum <- colSums(mol[,1:5])
sum <-rowSums(mol[,1:5])
rowMeans(mol[1:5,1:6])
colMeans(mol[1:5,1:6])

#Data:
simu <- read.table("simu.txt",header = TRUE, encoding = "latin1")
length(names(simu))
amb<- simu[,1:6]
other<-simu[,7:26]
plot(amb$temperatura,amb$altitude, col = 1, pch = 19)
plot(amb$altitude,amb$pH,col = 1, pch = 19)
plot(amb$condutividade,amb$pH,col = 1, pch = 19)
copy<-other
copy[copy>0]<-1
enrichment <- rowSums(copy)
average_enrichment<- mean(enrichment)
city_enr <- tapply(enrichment, amb$município, mean)

#Data pt.2:
amb<- simu[,1:6]
other<-simu[,7:26]
enrich.riacho <- other
enrich.riacho[enrich.riacho>0]<-1
enrich.riacho<-colSums(other)
enrich.riacho

#Data pt.3:
simu.log<-log(other)
simu.log
simu.log <- log(other+1)
simu[order(simu$altitude),]
order(simu$altitude)
#For us really saw the order, we need to use order function out of the "simu[]".
par(mfrow=c(2,2))
stripchart(enrichment~factor(simu[,"município"]), vertical = TRUE, method = "stack", offset = 1)
par(mfrow = c(1,1))

#By and Aggregate:
test <-aggregate(other, list(simu$município), mean)
test
?aggreggat
?by
options(stringsAsFactors = FALSE)
test <- by(other,simu[,1], order)
test
test[["Lençóis"]]
#To access List we need to use double "["

#Which:
a <- c(1,2,3,4,5,6,7)
which(a>5)
a[which(a>3)]
mol
mol[which(mol$chuva>1600),]
mol[which(mol$reserva == "A" & mol$chuva>1600),1:6]

#Subset:
subset(mol, chuva > 1600 , reserva)
subset(mol, chuva < 1800)
#Subset = Which#

#Ifelse:
salarios<-c(1000, 400, 1200, 3500, 380, 3000, 855, 700, 1500, 500)
ifelse(salarios<=1000, "pouco", "justo")
ifelse(salarios>3000, "muito", "justo")

#New Data:
long <- read.table("tabela_longa.txt", header = TRUE)
nrow(long)
table(long$parcela, long$especie)
tapply(as.numeric(long$abundancia), long$especie, mean)

#Pt2:
letras<- LETTERS[1:10]
abc<- seq(1,10,length.out = 10)
together <- data.frame(cbind(letras, abc))
together <- data.frame(rbind(letras,abc))
together
t(together)

#Pt.3:
amb2 <- read.table("ambiente_2.txt", header = TRUE)
cbind(long,amb2)
longab<- merge(long,amb2)
head(longab)
longab
longab2<-merge(long,amb2,all.x=TRUE)
longab2
?merge

#Pt.4:
coord <- data.frame(matrix(NA,10,3))
coord
colnames(coord) <-c("plot","lat","long")
coord
coord[,1] <- paste("plot_", seq(1,10,1), sep="")
coord
?paste
coord[,2] <- sample(-5:2,10, replace=T)
coord[,3] <- sample(-49:-60,10, replace=T)
merge(longab2,coord, all.x=T) #Won't work.
#Creating new dataframe;
key <- matrix(NA,10,2)
key[,1]<-paste("parcela", seq(1,10,1), sep="")
key
colnames(key)<-c("parcela","plot")
key[,2]<-coord[,"plot"]
#Key will be our ligation with the dataframes.
right.coord <- merge(coord, key, by.x = "plot", all.x = TRUE)
right.coord
all.data <- merge(longab2,right.coord)
all.data
#Now everything is fine!

