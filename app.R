# LIBRARIES ----
library(shiny)
library(shinyWidgets)
library(shinythemes)
library(shinyauthr)
library(shinymanager)
library(tidyverse)

source("ui_functions_fave_things.R")

# USER DATA ----
user_base_tbl <- tibble(
    user = c("jb112", "ar113"),
    password = c("pass1", "pass2"), 
    name = c("Junaid", "Aaron")
)


set_labels(
    language = "en",
    "Please authenticate" = tagList(h1("Favourite Things App"),
                                    p("Please Login")),
    "Username:" = "Username:",
    "Password:" = "Password:",
    "Login" = "Show me the money"
)

# UI ----
ui <- navbarPage(
    
    title = "Favourite Things App",
    inverse = FALSE,
    collapsible = TRUE,
    
    theme = shinytheme("flatly"),
    
    header = div(
        class = "pull-left",
        style = "padding-left: 20px;",
        h1(textOutput(outputId = "username"))
    ),
    
    tabPanel(
        title = "Favourite Movies",
        
        
        uiOutput(outputId = "fave_movie_cards"),
        
        
    ),
    
    tabPanel(
        title = "Favourite Books",
    
        uiOutput(outputId = "fave_books")
        
    )
)

ui <- secure_app(ui)


# SERVER ----
server <- function(input, output, session) { 
    
    
    
    # 0.0 USER LOGIN ----
    res_auth <- secure_server(
        check_credentials = check_credentials(user_base_tbl)
    )
    
 
    # 0.2 Instantiating User Information ----
    rv <- reactive(reactiveValuesToList(res_auth))
    
    # User name UI ----
    output$username <- renderText({
        paste0("Welcome ", rv()$name, "!")
    })
    
    
    # Movie Cards UI ----
    output$fave_movie_cards <- renderUI({
        if (rv()$name == "Junaid") {
            junaid_fave_film()
            
        } else {
            
            aaron_fave_film()
        }
    })
    
    # Favourite Books UI ----
    output$fave_books <- renderUI({
        if (rv()$name == "Junaid") {
            
            junaid_fave_books()
            
        } else {
            aaron_fave_books()
        }
    })
    
    
    
}


shinyApp(ui, server)