# Membuat sampel acak dari angka 1 hingga 10 sebanyak 10 elemen
data <- sample(1:10, 10, replace = TRUE)

n <- length(data)

cat("Data sebelum diurutkan : ")
cat(data, "\n")

n <- length(data)
for (i in 1:(n - 1)) {
  for (j in 1:(n - i)) {
    if (data[j] > data[j + 1]) {
      temp <- data[j]
      data[j] <- data[j + 1]
      data[j + 1] <- temp
    }
  }
}

cat("Data sesudah diurutkan : ")
cat(data, "\n")
