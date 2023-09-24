# install.packages("https://cran.r-project.org/src/contrib/Archive/prob/prob_0.9-2.tar.gz")

library("prob")

# probabilitas pelemparan koi
tosscoin(2)

# prob pelemparan dadu
rolldie(1)

# prob simulasi pembukaan kartu bridge
cards()

# Mengambil 2 sampel dari 3 elemen dengan pengembalian
urnsamples(1:3, size = 2, replace = TRUE, ordered = TRUE)

# mengambil 2 sampel dari 3 elemen tanpa pengembalian
urnsamples(1:3, size = 2, replace = FALSE, ordered = TRUE)

# mengambil 2 sampel dari 3 elemen dengan pengembalian dan tidak terurut
urnsamples(1:3, size = 2, replace = TRUE, ordered = FALSE)

# mengambil 2 sampel dari 3 elemen tanpa pengembalian dan tidak terurut
urnsamples(1:3, size = 2, replace = FALSE, ordered = FALSE)
