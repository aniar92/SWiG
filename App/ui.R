




shinyUI(fluidPage(
  titlePanel("Random data"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Calculate the percentage of data in selected range."),
      
      sliderInput("range", 
                  label = "Range of interest:",
                  min = -1, max = 1, value = c(-1, 1), step = 0.01)
      ),
    
    mainPanel(plotOutput("plot"),
              textOutput("text"))
  )
))