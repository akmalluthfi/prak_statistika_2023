# No 10 . Program menghitung rata-rata, variansi, simpangan baku tanpa fungsi bawaan

# Membuat sampel acak dari angka 1 hingga 10 sebanyak 30 elemen
data <- sample(1:10, 30, replace = TRUE)

# hitung mean
# semua data / jumlah data
mean <- sum(data) / length(data)
cat("rata rata data :", mean, "\n")

# variasi dari data sample
# cari mean
# deviasi = (tiap data - mean)
# lalu pangkatkan deviasi^2
deviations <- (data - mean)^2
# jumlah seluruh deviasi / jumlah data
# panjang data dikurang 1 apabila ingin menghitung variansi data sampel
# jika menghitung variansi data populasi tidak perlu dikurangi 1
variance <- sum(deviations) / (length(data) - 1)
cat("Variansi dari data sampel :", variance, "\n")

# simpangan baku (standar deviasi)
# akar kuadrat dari varians
standard_deviations <- sqrt(variance)
cat("Simpangan baku : ", standard_deviations, "\n")
