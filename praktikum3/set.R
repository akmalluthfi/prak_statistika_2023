library(prob)

s <- cards()
a <- subset(s, suit == "Heart")
b <- subset(s, rank %in% 7:9)

# Gabungan : Union
union(a, b)

# Interseksi : Intersection
intersect(a, b)

# Perbedaan : Difference
setdiff(a, b)
