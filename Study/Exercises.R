#------------------Exercises------------------#
#1:
tempo = c(18, 14, 14, 15, 14, 34, 16, 17, 21, 26)
max(tempo)
min(tempo)
mean(tempo)
#Max = 34/Min = 14/Mean = 18.9.

#2:
a = c(1:5)
b = c(4:7)
?union
union(a,b)
intersect(a,b)
setdiff(a,b)
#union = 1:7/intersect = 4,5.

#3:
abs(2^3-3^2)
#Answer is 1.

#4:
smp1 = sample(1:40,100,replace = TRUE)
a = smp1[1:50]
b = smp1[51:100]
a
b

#5:
megasena = sample(1:60,6)
megasena
#I'll choose these number to play on Megasena.

#6:
?seq
seq(1,30,2)

#7:
dado = sample(1:6,250,replace = TRUE)
?table
table(dado)
?hist
hist(dado, col = "300")
#Show us the frequency.

#8:
temp = c(9, 0 ,10 ,13 ,15 ,17 ,18 ,17 ,22 ,11 ,15 )
sqrt(temp)
log(temp)
log(temp+1)
(temp)^2

#--------------------------------END--------------------------------#