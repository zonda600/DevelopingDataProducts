
library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
      
      DiamondData <- reactive({diamonds[sample(nrow(diamonds), input$sampleSize),]})
      
      output$plot <- renderPlot({
            
            p <- ggplot(DiamondData(), aes_string(x=DiamondData()$carat, y=DiamondData()$cut)) + 
                  geom_point(color="darkblue") + labs(x="Carat", y="Cut")
            
            facets <- paste(input$facet_row, '~', '.')
            if (facets != '. ~ .')
                  p <- p + facet_grid(facets)
            
            print(p)
            
      }, height=700)
      
})