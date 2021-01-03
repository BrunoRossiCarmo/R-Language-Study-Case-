#------------------Exercises Pt.3 ------------------#

#1:
colMeans(subset(macac, Reserva == "A", c(Macacos, Frutas)))
colMeans(subset(macac, Reserva == "B", c(Macacos, Frutas)))

#2:
mol <- read.table("moluscos.txt", header = TRUE)
mean(mol[,1:6])
colMeans(mol[1:5,1:6])
rowMeans(mol[1:5,1:6])
mean(rowSums(mol[1:5,1:6]))

#3:
mol <- read.table("moluscos.txt", header = TRUE)
t(mol[,1:6])

#4:
macac <- read.table("Pasta1.txt", header = TRUE)
stripchart(macac$Macacos~macac$Reserva, vertical = TRUE, at = c(1.25,2.25), pch = 19, col = c(2,5), method = "stack", offset = 1, main = "Distribuição de Macacos nas Reservas", ylab = "Quantidade de Macacos")

#5:
minhoc <- read.table("minhocas.txt", header = TRUE)

#6:
#.1:
minhoc
minhoc.ord <- minhoc[order(minhoc$Área),]
minhoc.ord
#.2:
plot(minhoc$dens.minhocas,minhoc$Área, pch = 19, col = 4, ylab = "Area", xlab = "Densidade de Minhocas", main = "Distribuição de Minhocas por Área")
stripchart(minhoc$dens.minhocas~minhoc$Vegetação, vertical = TRUE, pch = 19, offset = 1, method = "stack", col = 6, ylab = "Densidade de Minhocas", main = "Densidade de Minhocas por Vegetacao")
#.3:
minhoc.alag <- minhoc[which(minhoc$Alagado == TRUE),]
minhoc.alag
#.4:
mean(minhoc$dens.minhocas)
colMeans(subset(minhoc, Alagado == TRUE, dens.minhocas))
colMeans(subset(minhoc, Alagado == FALSE, dens.minhocas))
#.5:
mean(minhoc$Área)

#7:
mol <- read.table("moluscos.txt", header = TRUE)
mol.abund <-ifelse(mol[,1:6]>=1,1,0)

#8:
rowSums(mol.abund)
colSums(mol.abund)
