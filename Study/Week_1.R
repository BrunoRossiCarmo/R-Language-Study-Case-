#----------------- Intro ----------------#
#Show the directory:
getwd()
?getwd

#Change the directory: 
setwd("C:\\Users\\bruno\\Desktop\\Usp\\Laboratorio\\CRID\\Codigos\\R-Apostia")

#Install packages:
install.packages("vegan")
?install.packages()

#Load the package:
library("vegan")
?library

#How cite R in academic research:
citation()
citation("vegan")

#Calculating terms: 
2+2 #plus
2-2 #subtraction 
2*2 #multiplication
2/2 #division
2^2 #expotential

#Searching functions: 
help.search("logarithms")
help.search("barplot")
??("barplot")
RSiteSearch("barplot")
#-----------------------#
#testing...
barplot(c(5:20,20:5), width = 2, col = '167')
?log

#Some random functions:
#-----------------------#
#x^1/2
?sqrt()
sqrt(9)
sqrt(3^2)
sqrt(8^8)

#x*y
?prod()
prod(2,2)
prod(4,4)

#log(base)x
log(3)
log(3,3)
log(9,3)
log(3,27)
log2(2)

#|x|s
?abs
abs(20-50)
abs(-40)

#x!
?factorial
factorial(3)
factorial(5)
#-----------------------#

#Demonstration:
?demo()
demo(graphics)
demo(image)
demo(persp)

#Objects:
aves = c(22, 28, 37, 34, 13, 24, 39, 5, 33, 32)
length(aves) #Show the total data.
letras<-c("a","b")
letras
misto<-c(1,2,"a")
misto

#Vectors Operators: 
max(aves)
min(aves)
sum(aves)
aves^2 #SQRT in all of numbers.
aves*10
max(aves^2)

n.aves <- length(aves)
total.aves <- sum(aves)
media = total.aves/n.aves
media
mean(aves)

#Acess and Manipulation in Vector:
aves[5]
aves[1]
aves[c(2,3,4)] #Acessing multiple parameters.
aves[c(1,2,3,4,5)]
aves[-1]
aves[1]<-67
aves.log = log10(aves)
aves.log
aves.sqrt = sqrt(aves)
aves.sqrt
ls() #See all of objects.
rm(aves.log)
ls()
rm(list=ls()) #Clear everything

#Complement:
NaN #Missing value
Inf #Infinite
1L #Explicit Integer number
#----------------- Intro_END ----------------#
