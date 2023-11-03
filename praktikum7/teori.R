# 1
sample_data <- c(10.2, 9.7, 10.1, 10.3, 10.1, 9.8, 9.9, 10.4, 10.3, 9.8)

t.test(sample_data, mu = 10, alternative = "two.sided", conf.level = 0.05)
t.test(sample_data, mu = 10, alternative = "two.sided", conf.level = 0.01)

# 2
ban_radial <- c(4.2, 4.7, 6.6, 7.0, 6.7, 4.5, 5.7, 6.0, 7.4, 4.9)
ban_biasa <- c(4.1, 4.9, 6.2, 6.9, 6.8, 4.4, 5.7, 5.8, 6.9, 4.7)

t.test(ban_radial, ban_biasa, paired = TRUE)

# 3
# Parameter
n <- 10 # ukuran sample
s_sample <- 1.2 # sd sample
sigma_company <- 0.9 # sd yang diumumkan oleh perusahaan
alpha <- 0.05 # tingkat keberartian

# Statistik uji chi-kuadrat
chi_squared <- ((n - 1) * s_sample^2) / sigma_company^2

# Batas kritis chi-kuadrat pada alpha 0.05 dan derajat kebebasan n - 1
chi_critical <- qchisq(1 - alpha, df = n - 1)

paste("Uji Chi-Kuadrat: ", chi_square)
paste("Nilai kritis : ", chi_critical)

# Uji hipotesis
if (chi_squared > chi_critical) {
  cat("
  Tolak hipotesis nol. Simpangan baku sampel lebih besar dari 0.9 tahun.
  \n")
} else {
  cat("
  Terima hipotesis nol. Simpangan baku sampel tidak lebih besar dari 0.9 tahun.
  \n")
}


# 4
# Data sampel
sampel <- c(10.2, 9.7, 10.1, 10.3, 10.1, 9.8, 9.9, 10.4, 10.3, 9.8)

# Variansi populasi yang diajukan dalam hipotesis null
variansi_populasi_null <- 0.03

# Menghitung variansi sampel
variansi_sampel <- var(sampel)

# Menghitung statistik uji Chi-Square
n <- length(sampel)
df <- n - 1
chi_square <- (n - 1) * variansi_sampel / variansi_populasi_null

# Menampilkan hasil
print(paste("Statistik Uji Chi-Square:", chi_square))
print(paste("Derajat Kebebasan (df):", df))

# Menentukan tingkat signifikansi
alpha <- 0.05

# Menghitung nilai kritis Chi-Square
kritis <- qchisq(1 - alpha / 2, df)

# Menampilkan nilai kritis
print(paste("Nilai Kritis Chi-Square:", kritis))

# Uji hipotesis
if (chi_square > kritis) {
  print("Menolak hipotesis nol: Varians populasi tidak sama dengan 0.03 liter.")
} else {
  print("
  Tidak cukup bukti untuk menolak hipotesis nol:
  Varians populasi sama dengan 0.03 liter.
  ")
}


# 5
# Data dari Mesin A dan Mesin B
mesin_a <- c(2.1, 2.0, 2.1, 2.3, 2.3, 2.2, 2.1, 2.2)
mesin_b <- c(1.9, 2.0, 2.1, 2.0, 2.3, 2.1, 2.0)

# Uji kesamaan rata-rata (t-test)
t.test(mesin_a, mesin_b, alternative = "two.sided")

# Uji kesamaan variabilitas (F-test)
var.test(mesin_a, mesin_b, conf.level)


# 6
sample_data <- c(10.1, 9.6, 9.7, 9.8, 10, 10.1, 9.5, 9.6, 9.7, 9.8, 9.9)

t.test(sample_data, mu = 10, alternative = "less")


# 7
# Data contoh
s_mean <- 42 # Rata-rata waktu registrasi dengan prosedur baru
population_mean <- 50 # Rata-rata waktu registrasi sebelumnya
sample_std_dev <- 11.9 # Simpangan baku dari contoh
sample_size <- 12 # Ukuran sampel

# Nilai alpha (tingkat signifikansi)
alpha <- 0.05

# Uji hipotesis (t-test)
t_statistic <- (s_mean - population_mean) / (sample_std_dev / sqrt(sample_size))
p_value <- pt(t_statistic, df = sample_size - 1)

# Menampilkan hasil uji
cat("Hasil Uji Hipotesis:\n")
cat("T-statistik:", t_statistic, "\n")
cat("Nilai p:", p_value, "\n")

# Melakukan uji hipotesis dan menentukan apakah menolak H0
if (p_value < alpha) {
  cat(
    "Kesimpulan: Menolak H0.
    Terdapat bukti statistik bahwa prosedur
    baru lebih efisien dalam hal waktu.\n"
  )
} else {
  cat("Kesimpulan: Tidak cukup bukti statistik untuk menolak H0.
  Proses baru belum dapat dikatakan lebih efisien dalam hal waktu.\n")
}

# 8
# Data dari daerah A
mean_a <- 38
std_dev_a <- 9
sample_size_a <- 100

# Data dari daerah B
mean_b <- 35
std_dev_b <- 7
sample_size_b <- 70

# Tingkat signifikansi
alpha <- 0.05

# Uji hipotesis (t-test)
t_statistic <- (mean_a - mean_b) /
  sqrt((std_dev_a^2 / sample_size_a) + (std_dev_b^2 / sample_size_b))

p_value <- pt(t_statistic, df = sample_size_a + sample_size_b - 2)

# Menampilkan hasil uji
cat("Hasil Uji Hipotesis:\n")
cat("T-statistik:", t_statistic, "\n")
cat("Nilai p:", p_value, "\n")

# Melakukan uji hipotesis dan menentukan apakah menolak H0
if (p_value < alpha) {
  cat("Kesimpulan: Menolak H0. Terdapat bukti statistik bahwa
  rata-rata jam kerja di daerah A lebih besar dari B.
  \n")
} else {
  cat("Kesimpulan: Tidak cukup bukti statistik untuk menolak H0.
  Rata-rata jam kerja di daerah A tidak signifikan lebih besar dari B.\n")
}

# 9
kelas_biasa <- c(75, 80, 70, 78, 72, 76, 74, 77, 79, 73, 75, 80)
kelas_terprogram <- c(85, 82, 88, 84, 80, 90, 85, 83, 87, 82)

t.test(
  kelas_biasa,
  kelas_terprogram,
  alternative = "two.sided", conf.level = 0.90, var.equal = TRUE
)
