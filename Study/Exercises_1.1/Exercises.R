#------------------Exercises------------------#
#1:
tempo = c(18, 14, 14, 15, 14, 34, 16, 17, 21, 26)
max(tempo)
min(tempo)
mean(tempo)
barplot(tempo, col = 5, ylim = c(0,40), main = "Frequencias de Tempo", ylab = "Frequencia",xlab = "Tempo")
abline(h = max(tempo)) + abline(h = min(tempo)) + abline(h = mean(tempo),col = 2)
#Max = 34/Min = 14/Mean = 18.9.

#2:
a = 1:5
b = 4:7
union(a,b)
intersect(a,b)
setdiff(a,b)
#union = 1:7/intersect = 4,5.

#3:
abs(2^3-3^2)
#Answer is 1.

#4:
smp1 = sample(c("A","B"), 100 ,replace = TRUE)
smp1 

#5:
megasena = sample(1:60,6)
megasena
#I'll choose these number to play on Megasena.

#6:
?seq
seq(1,30,2)

#7:
dado = sample(1:6,250,replace = TRUE)
table(dado)
hist(dado, col = "300", main = "Frequencia das Faces do Dado", breaks = 18, ylim = c(0,60))
#Show us the frequency.

#8:
temp = c(9, 0 ,10 ,13 ,15 ,17 ,18 ,17 ,22 ,11 ,15 )
sqrt(temp)
log(temp)
log(temp+1)
(temp)^2

#--------------------------------END--------------------------------#