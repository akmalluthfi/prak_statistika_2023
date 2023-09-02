# No 9 . Program menentukan nilai dalam huruf
nilai_angka <- sample(0:100, 20, replace = TRUE)
nilai_huruf <- c()

for (nilai in nilai_angka) {
  if (nilai <= 40) {
    nilai_huruf <- c(nilai_huruf, "E")
  } else if (nilai >= 41 && nilai <= 55) {
    nilai_huruf <- c(nilai_huruf, "D")
  } else if (nilai >= 56 && nilai <= 60) {
    nilai_huruf <- c(nilai_huruf, "C")
  } else if (nilai >= 61 && nilai <= 65) {
    nilai_huruf <- c(nilai_huruf, "BC")
  } else if (nilai >= 66 && nilai <= 70) {
    nilai_huruf <- c(nilai_huruf, "B")
  } else if (nilai >= 71 && nilai <= 80) {
    nilai_huruf <- c(nilai_huruf, "AB")
  } else if (nilai >= 81) {
    nilai_huruf <- c(nilai_huruf, "A")
  }
}

print(nilai_huruf)
