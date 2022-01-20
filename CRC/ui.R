library(shiny)
library(shinythemes)


# Define UI
ui <- fluidPage(theme = shinytheme("superhero"),
                navbarPage(tags$`color-profile`(tags$img(src = "CRC.png", height="30"), "Cardiovascular Risk Checker"),
                  tabPanel("Introduction","This can be done later",
                           sidebarPanel(
                             tags$h3("Input:"),
                             textInput("txt1", "Given Name:", ""),
                             textInput("txt2", "Surname:", ""),
                             
                           ), # sidebarPanel
                           mainPanel(
                             h1("Header 1"),
                             
                             h4("Output 1"),
                             verbatimTextOutput("txtout"),
                             
                           ) # mainPanel
                           
                  ), # Navbar 1, tabPanel
                  tabPanel("Deaths By Country", "I will be doing this
                           Here, there will be a bubble chart of the deaths caused by different diseases"),
                  tabPanel("Change in Deaths", "I will be doing this
                           Here we display **change** in death toll from 2007 to 2016"),
                  tabPanel("Predictor",
                  tabsetPanel( type = "tab",
                             tabPanel(title = "Explanation", "Here we explain what is going to be needed to calculate for CVDs"),
                             tabPanel(title = "Step 1", "Calculate Body Features (Diabetes, BMI etc)"),
                             tabPanel(title = "Step 2", "Calculate Diet"),
                             tabPanel(title = "Step3", "Calculate Physical activity"),
                             tabPanel(title = "Result", "Display result here")
                           )
                  ),
                  tabPanel("Documentation", "Display our doucmentation"),
                  tabPanel("About Us", "Display our team members and contribution")
                  
                  
                ) # navbarPage
) # fluidPage