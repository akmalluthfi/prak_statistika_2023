library("prob")

s <- tosscoin(2, makespace = TRUE)
print(s)
print(s[1:3, ])
print(s[c(2, 4), ])

s <- cards()
print(s)
subset(s, suit == "Heart")
subset(s, rank %in% 7:9)

subset(rolldie(3), X1 + X2 + X3 > 16)
