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

name <- "Junaid"

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
        
    ),
    
    tabPanel(
        title = "Interactive",
        
            column(
                width = 4,
                class = "well",
                
                selectInput(inputId = "medium_select",
                            label = "Select Medium",
                            choices = c("Movie", "Book"),
                            selected = "Movie"),
                
                textInput(inputId = "medium_name",
                          label = "Enter Name"),
                
                actionButton(inputId = "add_card",
                             label = "Add Card",
                             icon = icon("plus")),
                
                hr(),
                
                uiOutput(outputId = "drop_list"),
                actionButton(inputId = "delete_card",
                             label = "Drop")
                
            ),
        
        column(
            width = 8,
            uiOutput(outputId = "multi_card")
            
        ),
        
        
        
        
        
        
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
    
    # Interactive Favourites ----
    # 2.1 Reactive Values & Storing User Input ----
    reactive_values <- reactiveValues()
    reactive_values$favourites_tbl <- tibble()
    
    observeEvent(input$add_card, {
        
        # Collect details of new card a user wants to add
        new_row_tbl <- tibble(
            medium_select = input$medium_select,
            medium_name = input$medium_name) %>% 
            mutate(id = str_glue("{medium_select}_{medium_name}")) 
        
        # Add it to a tibble that holds card information
        reactive_values$favourites_tbl <- reactive_values$favourites_tbl %>% 
            bind_rows(new_row_tbl) %>% 
            distinct()
        
    })
    
    # 2.2 Rendering Multiple Items (tagList & map) ----
    # tagList lets you bind UI together in server side.
    
    output$multi_card <- renderUI({
        
        if ( nrow(reactive_values$favourites_tbl) > 0) {
            
            # Split row-wise into a list
            reactive_values$favourites_tbl %>% 
                mutate(id = as_factor(id)) %>% 
                split(.$id) %>% 
                
                # Map the data in the list to the info card elements
                map(.f = function(data) {
                    column(
                        width = 4,
                        info_card(
                            medium = data$medium_select,
                            name = data$medium_name
                        )
                    )
                }) %>% 
                tagList()
            
            
            
        }
        
        
    })
    
    # 2.3 Rendering Inputs Items ----
    output$drop_list <- renderUI({
        if (nrow(reactive_values$favourites_tbl) > 0) {
            
            selectInput(
                inputId = "drop_item",
                label = "Item to Delete",
                choices = reactive_values$favourites_tbl %>% pull(id)
            )
        }
    })
    
    # 2.4 Delete Item ----
    # Happens in the background
    observeEvent(input$delete_card, {
        
        if (nrow(reactive_values$favourites_tbl) > 0) {
            
            # Update the favourites tibble by filtering out the cards we want to drop
            reactive_values$favourites_tbl <- reactive_values$favourites_tbl %>% 
                filter(!(id %in% input$drop_item))
        }
    })
    
    
    
}


shinyApp(ui, server)