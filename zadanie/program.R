# Anna Ryszka

# wczytanie danych z pliku tekstowego
data = read.table("data_1.txt", sep=";", header=TRUE)
# pobranie wektora czasu i wartoœci
time = data$Time
values = data$Value
# narysowanie wykresu danych
plot(time, values)
# narysowanie œredniej na wykresie danych
abline(h = mean(values), col="red")
# narysowanie mediany na wykresie danych
abline(h = median(values), col="green")
# wyœwietlenie wartoœci œredniej i mediany w konsoli
print(mean(values))
print(median(values))
# narysowanie histogramu danych
hist(values, breaks=30)