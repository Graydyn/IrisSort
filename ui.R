library(shiny)

shinyUI(navbarPage("Iris Sorting App",

  tabPanel("Application",

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
      
      mainPanel(
        textOutput("dist")
      )
    )
  ),
  tabPanel("Documentation",
           HTML(paste(
           "This app is for identifying which species of Iris you have. You will need to measure the Sepal Length, Sepal Width, Petal Length, and Petal Width of your Iris with a ruler.",

"To use the app, use the sliders on the left to input the sepal and petal measurements from an Iris. The app will then output which varietal of Iris it believes you have, along with how certain it is.",

"Please note that the initial load of the app can take a few seconds. After that though, your results should be displayed immediately upon making changes to the sliders.", sep="<br/>"))
  )
  
))