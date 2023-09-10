# Tentukan dua matriks masing-masing berorde 3x3.
# Tentukan penjumlahan dan perkalian dua matriks tersebut

a <- matrix(c(4, 6, 8, 2, 4, 9, 1, 4, 2), nrow = 3)
b <- matrix(c(7, 2, 9, 2, 5, 2, 6, 8, 2), nrow = 3)

# Penjumlahan pada matriks
result_addition <- a + b
cat("Hasil Penjumlahan", "\n")
print(result_addition)

# Pengurangan pada matriks
result_substraction <- a - b
cat("Hasil Pengurangan", "\n")
print(result_substraction)

# Perkalian pada matriks
result_multiplication <- a %*% b
cat("Hasil Perkalian", "\n")
print(result_multiplication)
