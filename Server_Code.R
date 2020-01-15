library(shiny)
library(arules)
library(DBI)


shinyServer(function(input, output){
  
  output$mba <-renderPrint({
    rules <- apriori (transaksi_phiminimart, parameter = list(support = as.numeric(input$sup), confidence = as.numeric(input$conf) ))
    inspect(rules)  
  })
  
})