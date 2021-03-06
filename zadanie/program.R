# Anna Ryszka

# wczytanie danych z pliku tekstowego
data = read.table("data_1.txt", sep=";", header=TRUE)
# pobranie wektora czasu i warto�ci
time = data$Time
values = data$Value
# narysowanie wykresu danych
plot(time, values)
# narysowanie �redniej na wykresie danych
abline(h = mean(values), col="red")
# narysowanie mediany na wykresie danych
abline(h = median(values), col="green")
# wy�wietlenie warto�ci �redniej i mediany w konsoli
print(mean(values))
print(median(values))
# narysowanie histogramu danych
hist(values, breaks=30)