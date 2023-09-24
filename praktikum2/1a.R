pulse <- read.csv("https://akmalluthfi.github.io/dataset/pulse.csv")

# Tampilkan statistik deskriptif menggunakan summary()
# a1
print("summary variable Height by Sex")
print(by(pulse$Height, pulse$Sex, summary))

print("summary variable Weight by Sex")
print(by(pulse$Weight, pulse$Sex, summary))

# a2
print("summary variable Pulse1 by Smokes,Sex,Activity")
print(by(pulse$Pulse1, pulse$Smokes, summary))
print(by(pulse$Pulse1, pulse$Sex, summary))
print(by(pulse$Pulse1, pulse$Activity, summary))

print("summary variable Pulse2 by Smokes,Sex,Activity")
print(by(pulse$Pulse2, pulse$Smokes, summary))
print(by(pulse$Pulse2, pulse$Sex, summary))
print(by(pulse$Pulse2, pulse$Activity, summary))
