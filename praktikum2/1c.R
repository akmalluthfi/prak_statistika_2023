pulse <- read.csv("https://akmalluthfi.github.io/dataset/pulse.csv")
# Buat program untuk menampilkan statistik:
# mean, median, variansi, QR, dan koefisien variasi dari soal a

get_summary <- function(data, title = "Judul") {
  mean <- mean(data)
  median <- median(data)
  variance <- var(data)
  quartile <- quantile(data)
  sd <- sd(data)
  # Hitung koefisien varians
  cv <- (sd / mean) * 100

  print(title)
  cat("Mean : ", mean, "\n")
  cat("Median : ", median, "\n")
  cat("Variansi : ", variance, "\n")
  cat("Quartile : ", quartile, "\n")
  cat("Koefisien Variansi : ", cv, "\n")
}

get_summary(pulse$Pulse1, "Summary Pulse1")
get_summary(pulse$Pulse2, "Summary Pulse2")
get_summary(pulse$Ran, "Summary Ran")
get_summary(pulse$Smokes, "Summary Smokes")
get_summary(pulse$Sex, "Summary Sex")
get_summary(pulse$Height, "Summary Height")
get_summary(pulse$Weight, "Summary Weight")
get_summary(pulse$Activity, "Summary Activity")
