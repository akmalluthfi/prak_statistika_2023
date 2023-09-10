# Buat lah data frame yang berisi data mahasiswa beserta nilainya
students <- data.frame(
  id = c(1:5),
  name = c("John", "Caine", "Chris", "Tony", "Howard"),
  score = c(67, 89, 57, 87, 99)
)
print(students)

# lalu buatlah fungsi untuk menentukan lulus/tidaknya mahasiswa
is_pass <- function(scores) {
  grade <- list()

  for (i in seq_len(length(students$score))) {
    if (scores[i] >= 75) {
      grade[i] <- "Pass"
    } else {
      grade[i] <- "Fail"
    }
  }

  return(grade)
}

# simpan ke dalam vektor dan masukkan kembali ke data frame
students$status <- is_pass(students$score)
print(students)

# buatlah program untuk menentukan ganjil - genap
value <- 3
if (value %% 2 == 0) {
  print("Genap")
} else {
  print("Ganjil")
}

# buatlah deret angka genap dari 2 - 10
print(seq(2, 10, by = 2))
