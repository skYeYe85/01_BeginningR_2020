server <- function(input, output) {
  sim_data <- shiny::reactive({
    rnorm(input$number)
  })
  
  output$text_output <- shiny::renderText({
    # Display text input
    paste("Yout typed:", input$text_input)
  })
  
  output$distPlot <- shiny::renderPlot({
    # x <- rnorm(input$number)
    x <- sim_data()
    hist(x, col = input$colour)
  })
}