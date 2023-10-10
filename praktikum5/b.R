x <- c(171, 159, 166, 171, 155, 171, 159, 168, 175, 155)

table(x)
table(x) / length(x)
mean(x)
sd(x) * sqrt(9 / 10) # simpangan baku populasi


#
library(prob)
urnsamples(x, size = 5, replace = FALSE, ordered = FALSE)

sampel <- combn(x, 5)
print(sampel)
rerata <- colMeans(sampel)
rerata <- format(rerata, digits = 2)
prop.table(table(rerata))
table(rerata) / length(rerata)
png(file = "./praktikum5/plots/barplot_ds.png")
barplot(table(rerata))
dev.off()

#
mode(rerata)
rerata <- as.numeric(rerata)
mode(rerata)

#
library(prob)
sampel <- urnsamples(c(5, 6, 7, 8, 9, 10),
  size = 2, replace = TRUE,
  ordered = TRUE
)
sampel
rerata <- rowMeans(sampel)
rerata <- format(rerata, digits = 2)
table(rerata)
table(rerata) / length(rerata)
plot(table(rerata))
barplot(table(rerata))

png(file = "./praktikum5/plots/plot1.png")
plot(table(rerata))
dev.off()

png(file = "./praktikum5/plots/barplot1.png")
barplot(table(rerata))
dev.off()

sampel <- urnsamples(
  c(5, 6, 7, 8, 9, 10),
  size = 5,
  replace = TRUE,
  ordered = TRUE
)

rerata <- rowMeans(sampel)
rerata <- format(rerata, digits = 2)
table(rerata)
table(rerata) / length(rerata)

png(file = "./praktikum5/plots/barplot2.png")
barplot(table(rerata))
dev.off()
