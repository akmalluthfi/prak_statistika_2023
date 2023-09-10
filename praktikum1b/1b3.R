student_scores <- read.csv("praktikum1b/student_scores.csv")
print(student_scores)

# Rata Rata
mean_math <- mean(student_scores$Matematika)
cat("Rata Rata Nilai Matematika :", mean_math, "\n")
mean_indonesian <- mean(student_scores$B.Indonesia)
cat("Rata Rata Nilai B.Indonesia :", mean_indonesian, "\n")
mean_english <- mean(student_scores$Bahasa.Inggris)
cat("Rata Rata Nilai B.Inggris :", mean_english, "\n")

# Simpangan baku
sd_math <- sd(student_scores$Matematika)
cat("Simpangan baku nilai Matematika :", sd_math, "\n")
sd_indonesian <- sd(student_scores$B.Indonesia)
cat("Simpangan baku nilai B.Indonesia :", sd_indonesian, "\n")
sd_english <- sd(student_scores$Bahasa.Inggris)
cat("Simpangan baku nilai B.Inggris :", sd_english, "\n")

# Hitung Nilai Akhir
calculate_score <- function(student) {
  math_score <- (40 / 100) * as.integer(student["Matematika"])
  indonesian_score <- (30 / 100) * as.integer(student["B.Indonesia"])
  english_score <- (30 / 100) * as.integer(student["Bahasa.Inggris"])

  return(sum(math_score, indonesian_score, english_score))
}

# Lalu simpan kembali ke data frame
student_scores$Nilai.Angka <- apply(student_scores, 1, calculate_score)
print(student_scores)

# Ubah Nilai Angka Ke dalam Nilai Huruf
score_to_letter <- function(student) {
  score <- as.integer(student["Nilai.Angka"])

  if (score <= 40) {
    return("E")
  } else if (score >= 41 && score <= 55) {
    return("D")
  } else if (score >= 56 && score <= 60) {
    return("C")
  } else if (score >= 61 && score <= 65) {
    return("BC")
  } else if (score >= 66 && score <= 70) {
    return("B")
  } else if (score >= 71 && score <= 80) {
    return("AB")
  } else if (score >= 81) {
    return("A")
  }
}

# Lalu simpan kembali ke data frame
student_scores$Nilai.Huruf <- apply(student_scores, 1, score_to_letter)
print(student_scores)
