library(shiny)

shinyUI(fluidPage(
  
  sidebarLayout(
    sidebarPanel(
      selectInput("sup", "Atur Nilai Support", choices = c(.1,.01,.05,.001,.005)),
      selectInput("conf","Atur Nilai Confidence", choices = c(.5,.6,.7,.8,.9))
    ),
    mainPanel(
      verbatimTextOutput("mba")
    )
  )
))