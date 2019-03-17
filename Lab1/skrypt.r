# a)
a <- 5/4^3
b <- 2*a
min(a,b)

# b)
help(min)

# c)
a <- seq(50, 75) ^ 2
avg <- sum(a) / length(a)

# d)
apropos("min", mode="function")

# e)
setwd("d:\\test")
a <- "aparat z wymienną optyką"
write(a, "plik")
rm(a)
a <- readLines("plik")

# f)
install.packages("gridExtra")

library(grid)
library(gridExtra)
d <- head(Seatbelts, 10)
g <- tableGrob(d, cols=colnames(d), rows=rownames(d))
grid.newpage()
grid.draw(g)

# g)
v <- seq(1000, 800)

# h)
a <- seq(29, 5)
b <- seq(21, 33)
d <- c(a, b)

# i)
nazwa <- c(
  "Olympus PEN E-PL8 + 14-42mm EZ + 40-150mm (czarny)",
  "Panasonic Lumix DMC-GX80 + 14-42 mm (czarny)",
  "Panasonic Lumix DMC-G7 14-42 (czarny) + dodatkowy akumulator",
  "Sony Alpha a6300 (ILCE-6300) body (czarny)",
  "Sony Alpha a6300 (ILCE-6300L) + 16-50 mm (czarny)",
  "Panasonic Lumix DMC-GX800K + 12-32 mm (czarny)",
  "Sony Alpha a7K (ILCE-7K) + 28-70 mm",
  "Sony Alpha a6000 (ILCE-6000LB) + 16-50 mm (czarny)",
  "Sony Alpha a5100 (ILCE-5100L) + 16-50 mm (czarny)",
  "Sony Alpha a7 III (ILCE-7M3K) + 28-70 mm"
)

rozdzielczosc <- c(
  "16,1 Mpix",
  "16 Mpix",
  "16 Mpix",
  "24,2 Mpix",
  "24,2 Mpix",
  "16,84 Mpix",
  "24,3 Mpix",
  "24,3 Mpix",
  "24,3 Mpix",
  "24,2 Mpix"
)

zakres_czulosci <- c(
  "200 - 25600",
  "200 - 25600",
  "200 - 25600",
  "100 - 51200",
  "100 - 51200",
  "100 - 51200",
  "100 - 51200",
  "100 - 25600",
  "100 - 51200",
  "100 - 25600"
)

cena <- c(
  1899,
  2299,
  2199,
  2799,
  3299,
  1499,
  3699,
  2499,
  1899,
  10295
)
liczba_opinii <- c(
  10,
  18,
  14,
  16,
  18,
  6,
  8,
  64,
  10,
  1
)
aparaty <- data.frame(
  nazwa,
  rozdzielczosc,
  zakres_czulosci,
  cena,
  liczba_opinii
)
srednia_cena <- mean(aparaty$cena)

# j)
nowy_aparat <- data.frame(
  nazwa = "Panasonic DC-GH5 - body ",
  rozdzielczosc = "20,3 Mpix",
  zakres_czulosci = "100 - 25600",
  cena = 6544,
  liczba_opinii = 4
)
aparaty <- rbind(aparaty, nowy_aparat)
srednia_cena <- mean(aparaty$cena)

# k)
kolumna <- c(
  "5.0",
  "5.0",
  "5.0",
  "5.0",
  "5.0",
  "5.0",
  "5.0",
  "5.0",
  "5.0",
  "4.5",
  "5.0"
)
aparaty$ocena = kolumna
srednia_wg_oceny <- aggregate(aparaty$cena, list(aparaty$ocena), mean)

for (i in 1:nrow(srednia_wg_oceny)) {
  print(sprintf("ocena %s -> średnia cena %s", srednia_wg_oceny[i,1], srednia_wg_oceny[i,2]))
}

# l)
nowy_aparat <- data.frame(
  nazwa = "Olympus OM-D E-M10 Mark II + 14-42 mm + 40-150 mm (czarny)",
  rozdzielczosc = "16,1 Mpix",
  zakres_czulosci = "200 - 25600",
  cena = 3199,
  liczba_opinii = 5,
  ocena = "4.5"
)
aparaty <- rbind(aparaty, nowy_aparat)

nowy_aparat <- data.frame(
  nazwa = " Canon EOS M100 + 15-45mm IS STM (biały) - Edycja Limitowana",
  rozdzielczosc = "24,2 Mpix",
  zakres_czulosci = "100 - 25600",
  cena = 1904,
  liczba_opinii = 2,
  ocena = "5.0"
)
aparaty <- rbind(aparaty, nowy_aparat)

nowy_aparat <- data.frame(
  nazwa = " Canon EOS M50 + 15-45mm (biały) ",
  rozdzielczosc = "24,1 Mpix",
  zakres_czulosci = "100 - 51200",
  cena = 2519,
  liczba_opinii = 15,
  ocena = "4.5"
)
aparaty <- rbind(aparaty, nowy_aparat)

nowy_aparat <- data.frame(
  nazwa = " Panasonic Lumix DMC-GX80 + 12-32 mm + 35-100 mm (srebrny) ",
  rozdzielczosc = "16 Mpix",
  zakres_czulosci = "200 - 25600",
  cena = 2999,
  liczba_opinii = 2,
  ocena = "4.5"
)
aparaty <- rbind(aparaty, nowy_aparat)


# m)
liczba_aparatow_z_ocena <- aggregate(aparaty$nazwa, list(aparaty$ocena), length)
