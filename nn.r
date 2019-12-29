# 1. Opis tabelaryczny (wprowadzenie danych w postaci tabeli)

install.packages("readxl")
library(readxl)
myData <- read_excel("cereal.xlsx")

#2.Graficzna prezentacja wynik?w (histogram, wykres pude?kowy)

cals <- myData$calories
sugs <- myData$sugars

dominanta <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

result<-dominanta(sugs)

# a) Cukry - histogram i wykres pude?kowy

pdf("Cukry.pdf")

hist(sugs, main = "Rozkład ilości cukrów w płatkach", xlab = "Ilość cukrów", ylab = "Częstotliwość")
boxplot(sugs, main = "Rozkład ilości cukrów w płatkach")

dev.off()

# b) Kalorie - histogram i wykres pude?kowy

pdf("Kalorie.pdf")

hist(cals, main = "Rozkład ilości kalorii w płatkach", xlab = "Ilość kalorii", ylab = "Częstotliwość")
boxplot(cals, main = "Rozkład ilości kalorii w płatkach")

dev.off()

#3. Wyznaczanie miar rozkładu

# 1) Miary połołenia 

# a) CUKRY
mean(sugs) #śr. arytmet.
median(sugs) #mediana
quantile(sugs) #kwantyle

# B) KALORIE
mean(cals)
median(cals)
quantile(cals)

# 2) Miary rozproszenia (dyspresja)

# A) CUKRY
sd(sugs) #odchylenie standard.
max(sugs) - min(sugs) #rozstęp
IQR(sugs) #rozstęp międzykwantylowy

# B) KALORIE
sd(cals)
max(cals) - min(cals)
IQR(cals)

# c) Miary badające kształt rozkładu

install.packages("moments")
library(moments)

# A) CUKRY
skewness(sugs) #współczynnik skośności
kurtosis(sugs) #kurtoza

# B) KALORIE
skewness(cals)
kurtosis(cals)