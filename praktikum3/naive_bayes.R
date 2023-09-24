# memanggil paket
library(e1071)
library(caret)

# siapkan data
url <- "https://akmalluthfi.github.io/dataset/user_elite_sidoarjo.csv"
dataku <- read.csv(url)

# membagi data
sampel <- sample(seq_len(nrow(dataku)), 0.75 * nrow(dataku), replace = TRUE)
training <- data.frame(dataku)[sampel, ]
testing <- data.frame(dataku)[-sampel, ]
# membuat model Naive Bayes
model_nb <- naiveBayes(Keputusan ~ ., data = training)
# melakukan prediksi
prediksi <- predict(model_nb, testing)
hasil <- confusionMatrix(table(prediksi, testing$Keputusan))
hasil
