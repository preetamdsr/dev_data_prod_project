library(shiny)
library(datasets)

shinyUI(pageWithSidebar(
  headerPanel("European Currency Conversion App"),
  sidebarPanel(
    h3("User Input Panel"),
    textInput("in_num","Input Value",value = 0),
    selectInput("curr1","From",c(colnames(euro.cross),"EURO")),
    selectInput("curr2","To",c(colnames(euro.cross),"EURO")),
    submitButton("submit")
    ),
  mainPanel(
    tabsetPanel(
      tabPanel("Main",
               h1("Main Panel"),
               h3("User Input:"),
               textOutput("oid1"),
               h3("conversion"),
               verbatimTextOutput("oid2"),
               h3("Output"),
               textOutput("oid3")               
      ),
      tabPanel("Code",
               h3("For complete source code please go to the following link"),
               wellPanel(
                 helpText(a("Source Code",href="http://www.google.com")
                 )
               )),
      tabPanel("Help",
               h3("Please go through the Read me file, if you are having any difficulty"),
               wellPanel(
                 helpText(a("Read me",href="http://www.google.com")
                 )
               )
        )   
    )  
  )
  )
)
