library(maps)
library(mapproj)

# wczytanie danych z pliku tekstowego
data <- read.table("data_1.txt", sep = ";", header = TRUE)
# pobranie wektora czasu i wartoœci
time = data$Time
values = data$Value
# narysowanie wykresu danych
#handle = plot(time, values)

shinyServer(
  function(input, output) {
    
    output$plot <- renderPlot({
      plot(time, values)
      min = input$range[1]
      max = input$range[2]
      abline(h = min, col="red")
      abline(h = max, col="red")
      
    output$text <- renderText({
      
      sum <- 0
      for(i in 1:length(values)) {
        if(values[i] > min && values[i] < max)
          sum <- sum + 1
      }
      
      result <- sum/length(values)*100
      
      paste("The percentage of data in selected range:", result, "%")
    })
      
    })
  }
)