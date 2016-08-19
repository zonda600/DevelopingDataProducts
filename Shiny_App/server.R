library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
      
      DiamondsData <- reactive({diamonds[sample(nrow(diamonds), input$sampleSize),]})
      
      output$plot <- renderPlot({
            
            p <- ggplot(DiamondsData(), aes_string(x=DiamondsData()$carat, y=DiamondsData()$cut)) + 
                  geom_point(color="darkblue") + labs(x="Carat", y="Cut Quality")
            
            facets <- paste(input$facet_row, '~', '.')
            if (facets != '. ~ .')
                  p <- p + facet_grid(facets)
            
            print(p)
            
      }, height=800)
      
})