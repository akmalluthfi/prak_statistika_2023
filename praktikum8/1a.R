# Korelasi
# Diketahui data berpasangan antara
# pendapatan (X) dengan pengeluaran (Y) sebagai berikut:

pend <- c(5.2, 6.7, 4.3, 6.1, 8.2, 6.5, 4.1, 5.0, 7.5, 6.8)
peng <- c(3.6, 5.1, 4.0, 4.8, 5.8, 5.7, 3.9, 3.8, 6.1, 4.9)

# gambar scatter plot (diagram pencar).
png(file = "./praktikum8/plots/diagpencar.png")
plot(pend, peng,
  main = "Diagram Pencar",
  xlab = "Pendapatan (Rp.jt)",
  ylab = "Pengeluaran (Rp.jt)"
)
dev.off()

# hitung koefisien korelasi dan kovariansi
cor(pend, peng)
cov(pend, peng)

# uji korelasi
cor.test(pend, peng)
