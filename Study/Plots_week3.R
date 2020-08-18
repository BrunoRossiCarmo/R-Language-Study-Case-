##----------------- Intro-PT3 ----------------#
#-----Plots-----#
example(persp)


#Barplot:
?barplot
barplot(sample(1:10,20,replace = TRUE), col = "300")


#Pie:
pie(sample(1:10,4,replace = TRUE), labels = c("Medo","Odio","Raiva","Tristeza"), col = c("900","200","150","450"), main = "Distribição das Motivações de Ataques")
example(pie)
?pie

#Dispersion: 
y = 11:20
x = 1:10
plot(x,y)
plot(x,y,type= "l")
plot(x,y, type = "b")
plot(x,y, type = "n")
plot(x,y, xlab = "Var 1", ylab = "var 2", main = "Just testing all of it", col= "950", pch = 1:10)
plot(x,y, xlab = "Var 1", ylab = "var 2", main = "Just testing all of it", col= "950", pch = 11:20)
plot(x,y, xlab = "Var 1", ylab = "var 2", main = "Just testing all of it", col= "950", pch = 20:25)
abline(h=mean(y))
abline(v=mean(x))
abline(v = 4, col = 4)
abline(v=5,h=18,col=c(2,6))
#Adding new points:
u = sample(1:10,10,replace = TRUE)
v = sample(10:20,10,replace = TRUE)
points(u,v,col = "blue")

#Another annotation (Qualitative values)
sex = sample(c("M","F","N/B"),10,replace = TRUE)
weight = sample(50:90,10)
plot(sex,weight) #Not work
#We need to transform our vector in factor:
sex = factor(sex)
plot(sex,weight)

#Stripchart:
stripchart(weight~sex, pch = 20)
stripchart(weight~sex, pch = 20, vertical = TRUE)
stripchart(weight~sex, pch = 20, vertical = TRUE, at=c(1.5,2,2.5))
#method = "stack / method = "stack
stripchart(weight~sex, pch = 20, vertical = TRUE, at=c(1.5,2,2.5),method = "stack", offset = 1)

#Text:
plot(1:10,1:10, type = "l")
text(4,2,"Jaime Lannister")
text(8,6,"Tyrion Lannister")
text(c(6,4),c(8,8),c("Daenerys Targaryan","Sir Bron"))
text(locator(1),"Hello") #Click with the mouse.

#Subtitle:
plot(x,y, xlab = "Var 1", ylab = "var 2", main = "Just testing all of it", col= 9 , pch = 20)
points(u,v,col = "blue", pch = 20)
legend("topleft", legend=c("Strain A", "Strain B"),
pch=c(20,20), col=c(9,"blue", bty = "n", cex=0.5))
#cex = size // bty = borders 

#Screen (Division):
par(mfrow=c(1,2))
plot(sample(1:10))
plot(rnorm(10))

par(mfrow=c(2,1))
plot(sample(1:10))
plot(rnorm(10))

par(mfrow=c(2,2))
plot(sample(1:10))
plot(rnorm(10))
plot(sample(10:20))
plot(rnorm(20))

#Save on high resolution:
tiff(filename="figura1.tiff", width=1000, height=1000,res=300)
plot(rnorm(10))
dev.off ()

