shinyUI(
  pageWithSidebar(
    headerPanel("My first Shiny app"),
    
    sidebarPanel(
      selectInput("Distribution", "Pleas Select Distribution Type",
                choices=c("Normal","Exponential")),
      sliderInput("sampleSize", label = "Pleas Select Sample Size: ",
                  min= 100, max= 5000, value= 1000, step= 100), 
      conditionalPanel(condition = "input.Distribution == 'Normal'", 
                       textInput("Mean", "Pleas select the mean", 10),
                       textInput("sd", "Pleas select standard deviation:", 3)),
      conditionalPanel(condition= "input.Distribution == 'Exponential'",
                       textInput("lambda", "Pleas select expinential lambda:", 1))
      ),
    mainPanel(
      plotOutput("myPlot")
    )
    
  )
  
)