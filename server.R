library(shiny)
library(ggplot2)

# Define server logic required to generate and plot the data
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        p <- ggplot(subset(health_impact, health_impact$STATE == input$state & health_impact$MONTH == input$month), aes(x = reorder(WEATHEREVENT, count, function(x) { sum(x) }), y = count, fill = WEATHEREVENT)) +
        geom_bar(stat = 'identity') +
        ggtitle("Total number of Recorded Weather Events") +
        labs(x = "Storm Type", y = "Total") +
        theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        coord_flip()
        p
    })

    output$distPlot2 <- renderPlot({

        p <- ggplot(subset(health_impact, health_impact$STATE == input$state & health_impact$MONTH == input$month), aes(x = reorder(WEATHEREVENT, total_healt, function(x) { sum(x) }), y = total_healt, fill = WEATHEREVENT)) +
        geom_bar(stat = 'identity') +
        ggtitle("Total number of Recorded Casualties") +
        labs(x = "Storm Type", y = "Total") +
        theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
        coord_flip()
        p
    })
})