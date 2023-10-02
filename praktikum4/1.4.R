# Menentukan probabilitas Distribusi Data Binomial
# x = 0, 1, 2, 3, 4, n = 4, p = 0.5
dbinom(0:4, size = 4, prob = 1 / 2)

# Menentukan prob. P(X<=9) – P(X<=6) = P(x=7)+P(x=8)+P(x=9)
pbinom(9, size = 12, prob = 1 / 6) - pbinom(6, size = 12, prob = 1 / 6)

# Menentukan prob. P(X<=9) – P(X<=6) = P(x=7)+P(x=8)+P(x=9)
diff(pbinom(c(6, 9), size = 12, prob = 1 / 6)) # same thing

# Menentukan P(X<a) = 0,25, berapa a?
qbinom(0.25, 51, 1 / 2)

# Membangkitkan bil random Binomial dengan x=8,n=150,p=0.4
rbinom(8, 150, .4)

# Buat sampel ukuran dengan increment (kenaikan) = 1.
x <- seq(0, 50, by = 1)
# Buat distribusi Binomial
y <- dbinom(x, 50, 0.5)
# Memberikan nama gambar
png(file = "./praktikum4/plots/dbinom.png")
# Menggambar grafik dari sampel
plot(x, y)
# Menyimpan file
dev.off()

# Buat sampel ukuran dengan increment (kenaikan) = 1.
x <- seq(0, 50, by = 1)
# Buat distribusi Binomial
cy <- pbinom(x, 50, 0.5)
# Memberikan nama gambar
png(file = "./praktikum4/plots/pbinom.png")
# Menggambar grafik dari sampel
plot(x, cy)
# Menyimpan file
dev.off()

# Menampilan pembangkitan var random Binomial
png(file = "./praktikum4/plots/binom1.png")
x1 <- rbinom(1000, 25, 0.1)
hist(x1,
  main = "Distribusi Binomial",
  xlab = "n = 25 dan p = 0.1",
  col = "green",
  border = "blue"
)
dev.off()

png(file = "./praktikum4/plots/binom2.png")
x1 <- rbinom(1000, 25, 0.2)
hist(x1,
  main = "Distribusi Binomial",
  xlab = "n = 25 dan p = 0.2",
  col = "green",
  border = "blue"
)
dev.off()

png(file = "./praktikum4/plots/binom3.png")
x1 <- rbinom(1000, 25, 0.9)
hist(x1,
  main = "Distribusi Binomial",
  xlab = "n = 25 dan p = 0.9",
  col = "green",
  border = "blue"
)
dev.off()
