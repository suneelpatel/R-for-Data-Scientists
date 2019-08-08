setwd(choose.dir())
getwd()

#[1]Load the required libraries and the data.
library(shiny)
library(ggplot2)
library(dplyr)

store<-read.csv("data10.csv")
View(store)

#-------------------------------------------------------------------------
#[2].Understand the data structure and provide concise summary on the following
summary(store)
dim(store)
ls(store)
names(store)
head(store)
str(store)

#------------------------------------------------------------------

ui<-fluidPage(
  titlePanel("Sugar Content across Products and Prices"),
  
  sidebarLayout(
    
    sidebarPanel(
      sliderInput(inputId = "priceInput",label = "price",min=0, max = 100, value = c(25,40),pre = "$"),
      radioButtons(inputId = "typeInput",label = "product type",
                   choices = c("Beverages", "Cake", "Candy", "Icecream"),
                   selected = "Beverages"),
      uiOutput("countryOutput")
              ),
            
  mainPanel(
      plotOutput(outputId = "coolplot"),
      br(),br(),
      tableOutput(outputId = "results")
          )
            )
              )
  

server<-function(input,output){
              output$countryOutput<-renderUI({
                selectInput(inputId = "countryInput",label = "Country",sort(unique(store$Country)),selected = "CANADA")
              })
            filtered<-reactive ({
              if (is.null(input$countryInput)){
                return(NULL)
              }
              store %>% 
                filter(Price >= input$priceInput[1],
                       Price <= input$priceInput[2],
                       Type == input$typeInput,
                       Country == input$countryInput
                       )
              })
            
            output$coolplot<- renderPlot({
              if (is.null(filtered())){
                return()
              }
              ggplot(filtered(),aes(Sugar_Content))+geom_histogram()
            })
            
            output$results<-renderTable({
                                    filtered()
            })
}

shinyApp(ui=ui,server=server)
