# 1. Opis tabelaryczny (wprowadzenie danych w postaci tabeli)

install.packages("readxl")
library(readxl)
myData <- read_excel("cereal.xlsx")

#2.Graficzna prezentacja wynik?w (histogram, wykres pude?kowy)

cals <- myData$calories
sugs <- myData$sugars

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
