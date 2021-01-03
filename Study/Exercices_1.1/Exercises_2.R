#------------------Exercises-2------------------#
#1:
frog = c(6,5,10,11,26,16,17,37,18,21,22,15,24,25,29,31,32,13,39,40)
temp = c(62,24,21,30,34,36,41,48,56,74,57,46,58,61,68,76,79,33,85,86)
umid = c(31,23,28,30,15,16,24,27,18,10,17,13,25,22,34,12,29,35,26,19)
par(mfrow = c(1,2))
plot(frog, umid,col = 10, pch = 20)
plot(frog, temp, col = 5, pch = 20)

#2:
par(mfrow = c(1,1))
aves<-c(22,28,37,34,13,24,39,5,33,32)
arvores<-c(25,26,40,30,10,20,35,8,35,28)
plot(aves, arvores, col = 15, pch = 19, main = "Analisando Aves e Suas Distribuições",xlab = "Quantidade de Aves", ylab = "Quantidade de Arvores")
#Valores inseridos:
arvores2<-c(6,17,18,11,6,15,20,16,12,15)
aves2<-c(7,15,12,14,4,14,16,60,13,16)
points(aves2,arvores2,col = 1, pch = 19) + legend("topleft", legend=c("Local A", "Local B"),
pch=c(20,20), col=c(15,1))

#3:
aves<-c(22,28,37,34,13,24,39,5,33,32)
aves2<-c(7,15,12,14,4,14,16,60,13,16)
aves.t = c(aves,aves2)
local = rep(c("A","B"), c(10,10))
stripchart(aves.t~local, vertical = TRUE, col = c(1,7), pch = c(19,19),method = "stack", offset = 1, at = c(1.2,2.2), ylim = c(0,61), main = "Quantidade de Aves por Regiao", ylab = "Aves")

#4:
?par

#5:
plot(aves, arvores, col = 15, pch = 20, main = "Analisando Aves e Suas Distribuições",
xlab = "Quantidade de Aves", ylab = "Quantidade de Arvores", bty = "n",ylim = c(0,60), xlim = c(0,60))
points(aves2,arvores2,col = 1, pch = 20)
legend("topleft", legend=c("Local A", "Local B"),
       pch=c(20,20), col=c(15,1))

#6:
plot(c(2,4,8,8),c(2,2,4,8),xlab = "1:10",ylab = "1:10",ylim = c(0,10), xlim = c(0,10))
points(c(2,4,8,8),c(2,2,4,8), pch = 20)
lines(2:8,2:8, lty=2) + lines(4:8,seq(2.0,4.0,length.out = 5))


#7:
x= rnorm(100, mean = 0, sd = 1)
y = rnorm(100, mean = 0, sd = 1)
par(mfrow = c(1,3))
hist(x)
hist(y)
plot(x,y,col = c(1,7), pch = c(19,19))

