tires <- read.csv("https://akmalluthfi.github.io/dataset/tires.csv")

# a. Buat pie chart
# dengan beberapa perform dengan kategori causeA berdasarkan variabel count
png(file = "./praktikum2/plots/piechart_causeA_by_count.png")
pie(na.omit(tires$Counts),
  labels = paste(na.omit(tires$CausesA), "\n", na.omit(tires$Counts)),
  main = "kategori causeA berdasarkan variabel count"
)
dev.off()

# b Buat summary variable SectionW, TreadW, Load, dan MileAge
print(summary(tires$SectionW))
print(summary(tires$TreadW))
print(summary(tires$Load))
print(summary(tires$Mileage))

# c Buat summary variabel SectionW, TreadW, Load, dan MileAge
# berdasarkan ID, TreadR, dan TractionR.
print(by(tires$SectionW, tires$ID, summary))
print(by(tires$SectionW, tires$TreadR, summary))
print(by(tires$SectionW, tires$TractionR, summary))

print(by(tires$TreadW, tires$ID, summary))
print(by(tires$TreadW, tires$TreadR, summary))
print(by(tires$TreadW, tires$TractionR, summary))

print(by(tires$Load, tires$ID, summary))
print(by(tires$Load, tires$TreadR, summary))
print(by(tires$Load, tires$TractionR, summary))

print(by(tires$Mileage, tires$ID, summary))
print(by(tires$Mileage, tires$TreadR, summary))
print(by(tires$Mileage, tires$TractionR, summary))
