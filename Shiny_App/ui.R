library(shiny)
library(ggplot2)

DiamondsData <- diamonds

shinyUI(pageWithSidebar(
      
      headerPanel("Diamonds Dataset Application"),
      
      sidebarPanel(
            
            sliderInput('sampleSize', 'Sample Size', min=1, max=nrow(DiamondsData),
                        value=min(1000, nrow(DiamondsData)), step=1000, round=0),
            
            selectInput('facet_row', 'Facet Option', c(None='.', names(DiamondsData)))
      ),
      
      mainPanel(
            plotOutput('plot')
      )
))