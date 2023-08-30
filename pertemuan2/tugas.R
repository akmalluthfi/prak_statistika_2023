a <- 3
b <- 4

# No. 1 : Operasi Aritmatika
# Penjumlahan
print(a + b)
# Pengurangan
print(a - b)
# Perkalian
print(a * b)
# Pembagian
print(a / b)
# Sisa Hasil Bagi
print(a %% b)
# Pangkat
print(a^b)

# No 2 . Operasi Aritmatika pada Vektor
a <- c(2, 4, 7, 2, 5, 2, 3, 4, 2, 3)
b <- c(3, 5, 5, 3, 5, 7, 3, 6, 8, 7)

# Penjumlahan
print(a + b)
# Pengurangan
print(a - b)
# Perkalian
print(a * b)
# Pembagian
print(a / b)
# Sisa Hasil Bagi
print(a %% b)
# Pangkat
print(a^b)

# No 3 . fungsi seq() dan rep()

x <- seq(-5, 3)
print(x)

y <- seq(5, 1)
print(y)

z <- seq(1000000, 2000000, length.out = 7)
print(z)

p <- rep(c(9, 5), each = 3)
print(p)

q <- rep(c(1, 2), times = 2, each = 3)
print(q)


# No 4 . Program Sederhana

# membuat program luas persegi panjang
p <- 2
l <- 4
rectangle_area <- p * l
print(rectangle_area)
# membuat program luas segitiga
a <- 3
t <- 4
triangle_area <- (1 / 2) * a * t
print(triangle_area)
# membuat program volume balok
p <- 2
l <- 4
t <- 5
block_volume <- p * l * t
print(block_volume)
# membuat program volume bola
r <- 5
ball_volume <- (4 / 3) * pi * r^3
print(ball_volume)


# No 5 . Pembuatan Data Frame

nama <- c("Gunandi", "Bintang", "Sinta", "Widya", "Harun", "Nurhaliza", "Didit", "Marjan", "Zialiha", "Efendy")
prodi <- c("D4 Teknik Elektronika", "D4 Teknik Informatika", "D4 Teknik Komputer", "D4 Teknik Mekatronika", "D3 Multimedia Broadcasting", "D4 Sains Data Terapan", "D3 Teknik Informatika", "D4 Teknik Elektronika", "D4 Teknik Telekomunikasi", "D4 Sains Data Terapan")
asal <- c("Bojonegoro", "Surabaya", "Banyuwangi", "Gresik", "Ngawi", "Metro", "Tulang Bawang", "Pasuruan", "Jombang", "Surabaya")
usia <- c(19, 19, 18, 19, 17, 18, 18, 19, 20, 19)

students <- data.frame(
  No = seq(1, 10),
  Nama = nama,
  Prodi = prodi,
  Asal_KotKab = asal,
  Usia = usia
)

print(students)

# No 6 . Menghitung Rerata, variansi, nilai korelasi
# Membuat sampel acak dari vektor angka 1 hingga 10 sebanyak 30 elemen
dat_x <- sample(1:10, 30, replace = TRUE)
dat_y <- sample(1:10, 30, replace = TRUE)

print(paste("Rata - rata data X :", mean(dat_x)))
print(paste("Rata - rata data Y : ", mean(dat_y)))
print(paste("Variansi data X : ", var(dat_x)))
print(paste("Variansi data Y : ", var(dat_y)))
print(paste("Korelasi Data X dan Y : ", cor(dat_x, dat_y)))

# No 7 . Program Ganjil-Genap
value <- 4
if (value %% 2 == 0) {
  print("Genap")
} else {
  print("Ganjil")
}

# No 8 . Program menentukan jenis akar pada persamaan kuadrat
# ax^2 + bx + c = 0 (bentuk umum dari persamaan kuadrat)
a <- 3
b <- 4
c <- 3
# Menghitung diskriminan
d <- b^2 - 4 * a * c
# Tentukan jenis akar
if (d > 0) {
  print("Akar Riil Berbeda")
} else if (d == 0) {
  print("Akar Riil Kembar")
} else {
  print("Akar Imajiner")
}

# No 9 . Program menentukan nilai dalam huruf
nilai_angka <- sample(0:100, 20, replace = TRUE)
print(length(nilai_angka))

# No 11 . Algoritma bubble sort
