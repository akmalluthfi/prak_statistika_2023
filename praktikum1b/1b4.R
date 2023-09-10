# Generate data
data <- sample(c("C", "H"), size = 60, replace = TRUE)

cc_count <- 0
ch_count <- 0
hc_count <- 0
hh_count <- 0

for (i in seq_len(length(data) - 1)) {
  if (data[i] == "C" && data[i + 1] == "C") {
    cc_count <- cc_count + 1
  } else if (data[i] == "C" && data[i + 1] == "H") {
    ch_count <- ch_count + 1
  } else if (data[i] == "H" && data[i + 1] == "C") {
    hc_count <- hc_count + 1
  } else if (data[i] == "H" && data[i + 1] == "H") {
    hh_count <- hh_count + 1
  }
}

# Simpan ke dalam matriks
items <- c(cc_count, ch_count, hc_count, hh_count)
dimnames <- list(c("C", "H"), c("C", "H"))

matriks_transisi <- matrix(items, nrow = 2, dimnames = dimnames)
cat("CC :", cc_count, "\n")
cat("CH :", ch_count, "\n")
cat("HC :", hc_count, "\n")
cat("HH :", hh_count, "\n")

print(matriks_transisi)
