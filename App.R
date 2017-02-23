# install.packages("shiny")
# library("shiny")


my.ui <- fluidPage(
  titlePanel("Hello Shiny"),
  p("This is Shiny!"),
  p("It is", em("sooooo"), "shiny"),
  textInput('user.name', label = "What is your name?", placeholder = "Names goes here"),
  
  # creates a slider
  sliderInput('slide.key', label = "Pick a number",
              min = 1, max = 20, value = 12),
  
  textOutput('message')
)

my.server <- function(input, output) {
  output$message <- renderText({
    my.message <- paste("Hello", input$user.name)
    print(my.message)
    return(my.message)
  })

}

shinyApp(ui = my.ui, server = my.server)
