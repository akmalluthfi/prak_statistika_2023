# TODO 1
# Nilai Matematika
maths <- c(70, 92, 80, 74, 65, 83)
# Nilai sejarah
histories <- c(74, 84, 63, 87, 78, 90)

cor(maths, histories)

cor.test(maths, histories, method = "pearson")
cor.test(maths, histories)

# TODO 2
# Kepadatan arus pengisi,X (mA/cm2)
x <- c(
  0.5, 0.5, 0.5, 0.5, 1.5, 1.5, 1.5,
  2.5, 2.5, 2.5, 2.5, 3.5, 3.5, 3.5, 3.5
)
# Tekanan hidrogen sesungguhnya, Y (atm)
y <- c(
  86.1, 92.1, 64.7, 74.7, 223.6, 202.1, 132.9,
  413.5, 231.5, 466.7, 365.3, 493.7, 382.3, 447.2, 563.8
)

# Hitung koefisien korelasi
cor(x, y)

# Regresi Linear Sederhana
model <- lm(formula = y ~ x)
print(summary(model))

# TODO 3
p <- c(19.6, 15.8, 12.0, 9.1, 6.1, 3.2, 1.9, 0.9)
v <- c(3.5, 4.0, 4.6, 5.7, 7.6, 12.4, 14.0, 16.9)

ln_p <- log(p)
ln_v <- log(v)

model <- lm(ln_p ~ ln_v)

# Mendapatkan taksiran koefisien a
a_estimated <- coef(model)["ln_v"]
# Menghitung nilai b
b_estimated <- exp(coef(model)["(Intercept)"])

cat("koefisien a", a_estimated, "\n")
cat("koefisien b", b_estimated, "\n")

# b
# PV^a = b
# P = b / v^a
# P = b * v^-a
cat("P = ", b_estimated, " * V^", a_estimated * -1, "\n")

# c
v <- 10
p <- b_estimated * v^(a_estimated * -1)
cat("rata-rata tekanan gas yang diharapkan", p, "\n")

# TODO 4

# a. Taksir koefisien S0, V0 dan g
t <- c(1, 2, 3, 4, 6, 8, 11)
st <- c(23, 38, 35, 45, 56, 68, 77)
t2 <- c(1, 4, 9, 16, 36, 64, 121)

model <- lm(st ~ t + t2)

summary(model)
s0 <- round(coef(model)["(Intercept)"], 3)
v0 <- round(coef(model)["t"], 3)
g <- round(coef(model)["t2"], 3)

cat("Nilai koefisien S0 =", s0, "\n")
cat("Nilai koefisien v0 =", v0, "\n")
cat("Nilai koefisien g =", g, "\n")

# b. Tentukan persamaan
cat("Persamaan: St =", s0, "+", v0, "t + ", "0.5 *", g, "t^2", "\n")
