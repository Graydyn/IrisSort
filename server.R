library(shiny)
library(datasets)
library(caret)
library(e1071)
shinyServer(function(input, output) {
  
  #using rpart, not because it performs especially well, but because it works at shinyapps.io
  model <- train(Species ~., data=iris, method="lda")
  
  output$dist <- renderText({ 
    
    df <- data.frame("Sepal.Length"=input$slider1,"Sepal.Width"=input$slider2,
                     "Petal.Length"=input$slider3,"Petal.Width"=input$slider4,
                     "Species"=0)
    
    prob <- predict(model, df, "prob")
    pred <- predict(model, df)
    
    paste("I am", toString(round(max(prob), digits = 4) * 100), "percent sure that this iris is a", pred)
  })
  
  
})