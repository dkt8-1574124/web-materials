# ui.R
library(shiny)
library(plotly)
library(shinythemes)
shinyUI(navbarPage(theme = shinytheme("cerulean"),
                   
  "Electoral College",
  # Create a tab panel for your map
  tabPanel(
    "Map",
    titlePanel("Electoral College Votes"),
    # Create sidebar layout
    sidebarLayout(

      # Side panel for controls
      sidebarPanel(
        tags$h2("This is a map"),
        tags$h3("This is a map"),
        
        # Input to select variable to map
        selectInput(
          "mapvar",
          label = "Variable to Map",
          choices = list(
            "Population" = "population",
            "Electoral Votes" = "votes",
            "Votes / Population" = "ratio"
          )
        ),
        tags$br(),
        HTML("<strong>Wow, I'm doing this<strong>"),
        tags$div(class = "sidebar",
                 tags$blockquote("I'm a floating blockquote!"))
      ),
      
      # Main panel: display plotly map
      mainPanel(
        plotlyOutput("map"),
        tags$link(rel = "styleshet", type = "text/css", href = "style.css"),
        tags$div(class = "summary", checked = NA,
                 tags$p("This shows bla bla bla...")
        ),
        tags$a(href = "https://www.archives.gov/federal-register/electoral-college/about.html",
               
               "for more information")
      )
    )
  ),
  tabPanel("the_second_one",
           tags$h1("Just for testing")
  )

  # Create a tabPanel to show your scatter plot
))