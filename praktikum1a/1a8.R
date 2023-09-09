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
