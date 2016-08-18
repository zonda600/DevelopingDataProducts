library(shiny)
library(ggplot2)

DiamondData <- diamonds

shinyUI(pageWithSidebar(
      
      headerPanel("Diamonds Dataset"),
      
      sidebarPanel(
            
            sliderInput('sampleSize', 'Sample Size', min=1, max=nrow(DiamondData),
                        value=min(1000, nrow(DiamondData)), step=500, round=0),


            selectInput('facet_row', 'Facet Option', c(None='.', c(DiamondData$clarity, DiamondData$depth)))
      ),
      
      mainPanel(
            plotOutput('plot')
      )
))