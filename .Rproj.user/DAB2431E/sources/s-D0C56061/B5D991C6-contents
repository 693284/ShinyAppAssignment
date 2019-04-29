#TESTING
#Zoren
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny) # we load shiny package

# This whole chunk is called UI(user interface). Define UI for application that draws a histogram
ui <- fluidPage( # everything inside is an input into fluidpage function (shiny func that sets up webpages)
   
   # Application title
   titlePanel("Demographic Information"), # this is a title of your app; when using comma at the end - you are adding more stuff
  
     
     # Copy the line below to make a select box 
     selectInput("select", label = h3("Select Gender"), 
                 choices = list("Female" = 1, "Male" = 2, "Other" = 3, "Martian" = 4), 
                 selected = 1),
     
     hr(),
     fluidRow(column(4, verbatimTextOutput("value"))),
  
     selectInput("select", label = h3("Select Age"), 
               choices = list("Adolescent" = 1, "Young Adult" = 2, "Adult" = 3 ), 
               selected = 1),
   
   hr(),
   fluidRow(column(3, verbatimTextOutput("value")))
     
   )

# second part of shiny app is server. in this part - a server is loading a code into a computer. when user moves the botton, this action is inside the server,Define server logic required to draw a histogram
server <- function(input, output) {
   
  # You can access the value of the widget with input$select, e.g.
  output$value <- renderPrint({ input$select })
  
}

# Run the application 
shinyApp(ui = ui, server = server)

