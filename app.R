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
   
   # Sidebar with a slider input for number of bins 
   sidebarLayout( # this will set up the layout of your app; inside is sidebar pannel - inside is slider input; 
      sidebarPanel(
         sliderInput("bins",                 # here u r setting up how much the slider moves; inside the bins change
                     "Number of bins:",
                     min = 1,
                     max = 60,
                     value = 30)
      ),
      
      # Show a plot of the generated distribution
      mainPanel(                     # inside here we put graphs
         plotOutput("distPlot")
      )
   )
)

# second part of shiny app is server. in this part - a server is loading a code into a computer. when user moves the botton, this action is inside the server,Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$distPlot <- renderPlot({ # name of a place where the graph goes - here we are saying lets find "displot" - here we have regular R code that makes a plot and will go into displot
      # generate bins based on input$bins from ui.R
      x    <- faithful[, 2] 
      bins <- seq(min(x), max(x), length.out = input$bins + 1)  # 
      
      # draw the histogram with the specified number of bins
      hist(x, breaks = bins, col = 'darkgray', border = 'white')
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

