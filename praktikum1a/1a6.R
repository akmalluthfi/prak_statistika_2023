# No 6 . Menghitung Rerata, variansi, nilai korelasi
# Membuat sampel acak dari vektor angka 1 hingga 10 sebanyak 30 elemen
dat_x <- sample(1:10, 30, replace = TRUE)
dat_y <- sample(1:10, 30, replace = TRUE)

print(paste("Rata - rata data X :", mean(dat_x)))
print(paste("Rata - rata data Y : ", mean(dat_y)))
print(paste("Variansi data X : ", var(dat_x)))
print(paste("Variansi data Y : ", var(dat_y)))
print(paste("Korelasi Data X dan Y : ", cor(dat_x, dat_y)))
