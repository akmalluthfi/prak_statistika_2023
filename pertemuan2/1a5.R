# No 5 . Pembuatan Data Frame

nama <- c("Gunandi", "Bintang", "Sinta", "Widya", "Harun", "Nurhaliza", "Didit", "Marjan", "Zialiha", "Efendy")
prodi <- c("D4 Teknik Elektronika", "D4 Teknik Informatika", "D4 Teknik Komputer", "D4 Teknik Mekatronika", "D3 Multimedia Broadcasting", "D4 Sains Data Terapan", "D3 Teknik Informatika", "D4 Teknik Elektronika", "D4 Teknik Telekomunikasi", "D4 Sains Data Terapan")
asal <- c("Bojonegoro", "Surabaya", "Banyuwangi", "Gresik", "Ngawi", "Metro", "Tulang Bawang", "Pasuruan", "Jombang", "Surabaya")
usia <- c(19, 19, 18, 19, 17, 18, 18, 19, 20, 19)

students <- data.frame(
  No = seq(1, 10),
  Nama = nama,
  Prodi = prodi,
  Asal_KotKab = asal,
  Usia = usia
)

print(students)
