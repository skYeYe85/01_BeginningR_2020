ui <- shiny::fluidPage(
  # Application title
  shiny::titlePanel("Hello LucerneR people!"),
  shiny::sidebarLayout(
    shiny::sidebarPanel(
      shiny::textInput(inputId = "text_input", label = "Input text here"),
      shiny::radioButtons(
        inputId = "number",
        label = "Chosse number of simulations:",
        choices = c(1000, 5000, 10000),
        inline = T
      ),
      shiny::selectInput(
        inputId = "colour",
        label = "Choose colour",
        choices = c("green", "blue", "red")
      )
    ),
    # Main with output
    shiny::mainPanel(shiny::textOutput("text_output"))
  )
)
