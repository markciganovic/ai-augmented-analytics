library(shiny)
library(tidyverse)
library(DT)

# Load data
data <- read_csv("sample_data.csv") %>%
  mutate(
    DefectRate = as.numeric(DefectRate),
    ReliabilityScore = as.numeric(ReliabilityScore),
    DowntimeMinutes = as.numeric(DowntimeMinutes)
  )

# UI
ui <- fluidPage(
  titlePanel("AI-Augmented System Performance Dashboard"),
  
  sidebarLayout(
    sidebarPanel(
      selectInput("region", "Select Region:", choices = c("All", unique(data$Region))),
      dateRangeInput("date_range", "Select Date Range:",
                     start = min(data$Date), end = max(data$Date))
    ),
    
    mainPanel(
      h4("Filtered Summary"),
      tableOutput("summary_table"),
      h4("Defect Rate Over Time"),
      plotOutput("defect_plot"),
      h4("Reliability Score Over Time"),
      plotOutput("reliability_plot"),
      h4("Downtime Over Time"),
      plotOutput("downtime_plot"),
      h4("Data Table"),
      DTOutput("data_table")
    )
  )
)

# Server
server <- function(input, output) {
  
  filtered_data <- reactive({
    df <- data
    if (input$region != "All") df <- df %>% filter(Region == input$region)
    df %>% filter(Date >= input$date_range[1], Date <= input$date_range[2])
  })
  
  output$summary_table <- renderTable({
    filtered_data() %>%
      summarise(
        Avg_DefectRate = round(mean(DefectRate), 2),
        Avg_Reliability = round(mean(ReliabilityScore), 2),
        Avg_Downtime = round(mean(DowntimeMinutes), 2)
      )
  })
  
  output$defect_plot <- renderPlot({
    filtered_data() %>%
      group_by(Date) %>%
      summarise(DefectRate = mean(DefectRate)) %>%
      ggplot(aes(Date, DefectRate)) +
      geom_line(color = "firebrick", size = 1.2) +
      labs(title = "Average Defect Rate Over Time")
  })
  
  output$reliability_plot <- renderPlot({
    filtered_data() %>%
      group_by(Date) %>%
      summarise(ReliabilityScore = mean(ReliabilityScore)) %>%
      ggplot(aes(Date, ReliabilityScore)) +
      geom_line(color = "darkgreen", size = 1.2) +
      labs(title = "Average Reliability Score Over Time")
  })
  
  output$downtime_plot <- renderPlot({
    filtered_data() %>%
      group_by(Date) %>%
      summarise(DowntimeMinutes = mean(DowntimeMinutes)) %>%
      ggplot(aes(Date, DowntimeMinutes)) +
      geom_line(color = "steelblue", size = 1.2) +
      labs(title = "Average Downtime (minutes) Over Time")
  })
  
  output$data_table <- renderDT({
    datatable(filtered_data())
  })
}

# Run app
shinyApp(ui, server)

