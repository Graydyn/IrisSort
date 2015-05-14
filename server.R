library(shiny)
library(datasets)
library(caret)
shinyServer(function(input, output) {
  
  model <- train(Species ~., data=iris)
  
  output$dist <- renderText({ 
    
    df <- data.frame("Sepal.Length"=input$slider1,"Sepal.Width"=input$slider2,
                     "Petal.Length"=input$slider3,"Petal.Width"=input$slider4,
                     "Species"=0)
    
    pred <- predict(model, df)
    
    paste("This iris is a", pred)
  })
})