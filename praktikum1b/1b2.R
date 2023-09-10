# Tentukan A sebagai matriks berordo 4x4 dan B adalah vector 4x1.
# Tentukan solusi sistem persamaan linier Ax = B menggunakan syntak R.

a <- matrix(c(7, 4, 6, 3, 6, 3, 7, 2, 4, 6, 8, 7, 6, 5, 3, 4), nrow = 4)
b <- c(3, 5, 2, 6)

# Cara cukup manual
a_inverse <- solve(a)
print(a_inverse %*% b)

# Cara cepat
print(solve(a, b))
