# Import data from csv
citizens <- read.csv("./citizens.csv")

# 1 warga yang memiliki gaji diatas 15jt
print(subset(citizens, Gaji >= 15))
# 2 warga yang memiliki gaji dibawah 10t
print(subset(citizens, Gaji <= 10))
# 3 warga yang memiliki hobby olah raga
print(subset(citizens, Hobby == "Olah raga"))
# 4 warga yang bekerja sebagai pns
print(subset(citizens, Pekerjaan == "PNS"))
# 5 warga yang berumur lebih dari 40 tahun
print(subset(citizens, Usia >= 40))

# 6 warga yang berumur diatas 30 dan belum menikah
print(subset(citizens, Usia >= 30 & Status == "Belum menikah"))
# 7 warga yang hobby menulis atau membaca
print(subset(citizens, Hobby == "Menulis" | Hobby == "Membaca"))
# 8 warga yang bekerja sebagai wiraswasta dengan gaji diatas 15jt
print(subset(citizens, Pekerjaan == "Wiraswasta" & Gaji >= 15))
# 9 warga yang bekerja sebagai PNS dan belum menikah
print(subset(citizens, Pekerjaan == "PNS" & Status == "Belum menikah"))
# 10 warga yang bekerja sebagai pns atau bumn
print(subset(citizens, Pekerjaan == "PNS" | Pekerjaan == "BUMN"))

# 11 warga yang bekerja pns atau bumn tetapi belum menikah
print(subset(citizens, (Pekerjaan == "PNS" | Pekerjaan == "BUMN") & Status == "Belum menikah"))
# 12 warga yang bekerja wiraswasta atau swasta dan memiliki gaji diatas 10jt
print(subset(citizens, (Pekerjaan == "Wiraswasta" | Pekerjaan == "Swasta") & Gaji >= 10))
# 13 warga yang hobby seni atau memasak dan belum menikah
print(subset(citizens, (Hobby == "Seni" | Hobby == "Memasak") & Status == "Belum menikah"))
# 14 warga yang bekerja pns atau bumn dan berusia dibawah 30
print(subset(citizens, (Pekerjaan == "PNS" | Pekerjaan == "BUMN") & Usia <= 30))
# 15 warga dengan gaji terkecil dan terbesar di kota
print(subset(citizens, (Gaji == 25 | Gaji == 1) & Tempat_tinggal == "Kota"))
