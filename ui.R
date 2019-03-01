library(shiny)

# Define UI for application that plots random distributions 
shinyUI(fluidPage(

# Application title
  headerPanel("Weather Event Types in the United States in 2011"),

  p("As a result of global warming, weather systems are becoming even more extreme year after year. 
    Overpopulation in certan areas also contribute that during these events more people gets impacted. 
    Additionally, damage to property and crops are directly impacted by these weather systems."),

    # Sidebar with a slider input for number of observations

    sidebarPanel(
    h4("Filter the data"),
    p("The data for this assignment come the U.S. National Oceanic and Atmospheric Administration 's (NOAA) storm database. This database tracks characteristics of major storms and weather events in the United States, 
    including when and where they occur, as well as estimates of any fatalities, injuries, and property damage."),

    p("The events in the database start in the year 1950 and end in November 2011. For the purpose of this demo, only data for 2011 was considered."),
      p("Use the foloowing drop downs to filter the data you want to visualise by month and US state."),
      selectInput("month", "Select Month:", choices = month_list, selected = month_list[1]),
      selectInput("state", "Select a State:", choices = state_list, selected = state_list[1])),

      # Show a plot of the generated distribution
  mainPanel(
    plotOutput("distPlot"),
    plotOutput("distPlot2")
  )
))