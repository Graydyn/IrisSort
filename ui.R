library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Iris Sorting App"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      
             sliderInput("slider1", label = h5("Sepal Length"),
                         min = 4.3, max = 7.9, value = 5, step = 0.1),
             sliderInput("slider2", label = h5("Sepal Width"),
                         min = 2, max = 4.4, value = 2, step = 0.1),
             sliderInput("slider3", label = h5("Petal Length"),
                         min = 1, max = 6.9, value = 1, step = 0.1),
             sliderInput("slider4", label = h5("Petal Width"),
                         min = 0.1, max = 2.5, value = 1, step = 0.1)
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      textOutput("dist")
    )
  )
))