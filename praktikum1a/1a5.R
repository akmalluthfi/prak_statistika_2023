# No 5 . Pembuatan Data Frame
students <- data.frame(
  No = seq(1, 10),
  Nama = c(
    "Gunandi", "Bintang", "Sinta", "Widya", "Harun",
    "Nurhaliza", "Didit", "Marjan", "Zialiha", "Efendy"
  ),
  Prodi = c(
    "D4 Teknik Elektronika", "D4 Teknik Informatika",
    "D4 Teknik Komputer", "D4 Teknik Mekatronika",
    "D3 Multimedia Broadcasting", "D4 Sains Data Terapan",
    "D3 Teknik Informatika", "D4 Teknik Elektronika",
    "D4 Teknik Telekomunikasi", "D4 Sains Data Terapan"
  ),
  Asal_KotKab = c(
    "Bojonegoro", "Surabaya", "Banyuwangi", "Gresik",
    "Ngawi", "Metro", "Tulang Bawang", "Pasuruan", "Jombang", "Surabaya"
  ),
  Usia = c(19, 19, 18, 19, 17, 18, 18, 19, 20, 19)
)

print(students)
