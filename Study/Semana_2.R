#----------------- Intro-PT2 ----------------#
#------Part2------#

#Accessing vector
x= c(1,2,3,4,5)
x[5]
x[c(1,3,5)]
x[-1]
x = matrix(1:6, nrow = 2, ncol = 3)
x[2,2:3]

#Generate sequences:
1:10
seq(1,10,2) #Very better.
seq(to = 10, from = 1, 2)
seq(to = 20, by = 2)
?seq
seq(2,20,length.out = 10)

#Generate repetition: 
?rep
rep(5,3)
rep("cha",2)
rep(1:2,2)
rep(1:2, each = 2)
rep(2, each = 2)
rep(c("A","B"),each=5)
rep(c("A","B"),5)
rep(c("Três","Dois","Sete","Quatro"),c(3,2,7,4)) 

#Generating Data:
#runiff (Uniform Distribution)
?runif
runif(n, min = 0, max = 0.50)
x = runif(200, 30,50)
barplot(x, col = "30", ylim = c(0.0,50.0))
hist(x,col = "30")

#rnorm (Normal Distribution)
?rnorm
x= rnorm(2000, mean = 0, sd = 1)
hist(x)

#AleatorY Sample:
?sample
sample(1:30,35, replace = TRUE)
moeda = sample(c("CARA","COROA"),4,replace=TRUE)
moeda

#Sort, Order and Rank:
x = sample(1:15,10)
x
sort(x)
sort(x, decreasing = TRUE)
order(x) #position.
order(x, decreasing = TRUE)
x = sample(1:15,10)
x[order(x)]
x[order(x, decreasing = TRUE)]
rank(x)
x[order(rank(x))]
