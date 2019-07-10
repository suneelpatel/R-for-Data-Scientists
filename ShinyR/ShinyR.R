library(shiny)
ui=fluidPage("This is spartaa")
server = function(input,output){}
shinyApp(ui=ui,server=server)  

#define inputs
scdin=sliderInput(inputId = "Slider 1",label = "marks", value = 0,min=0, max=5)
shinyApp(ui=scdin,server=server)  

#action button
acb=actionButton(inputId = "b1", label = "Press", width = 300, icon = icon("play-circle") )
shinyApp(ui=acb,server=server)  

#Check Box
chkbx = checkboxInput(inputId = "c1",label = "Yes", value = TRUE,width = 500)
shinyApp(ui=chkbx,server=server)  

#Multiple Check Box
chkbxin=checkboxGroupInput(inputId = "cg1",label = "Select Fruit",choices = c("Apple","Orange","Banana"),selected = "Apple")
shinyApp(ui=chkbxin,server=server)

#Date Selection
dtin=dateInput(inputId = "d1", label = "Input Date", value = "1990-10-19", min = "1950-01-01", max = "2019-01-01")
shinyApp(ui=dtin,server=server)

#Upload file user interface
fin=fileInput(inputId = "f1",label = "Select File",buttonLabel = "Open",placeholder = "Upload File")
shinyApp(ui=fin,server=server)

#Slider Input
sin=sliderInput(inputId = "s1",label = "Marks",min=0, max = 100, value = 99)
shinyApp(ui=sin,server=server)

#Radio Button

Rb=radioButtons(inputId = "r1",label = "Favourite Game",choices = c("Football","Tennis","Cricket"),selected = "Football")
shinyApp(ui=Rb,server=server)

#image output
io=imageOutput(outputId = "i1")
shinyApp(ui=io,server=server)

##Output Function
ui=fluidPage(plotOutput(outputId = "p1"))
server<-function(input,output){
                  output$p1<-renderPlot(plot(1:100))
                            }
shinyApp(ui=ui,server=server)

#histogram
ui=fluidPage(plotOutput(outputId = "p2"))
server<-function(input,output){
  output$p2<-renderPlot(hist(iris$Petal.Length,col = "palegreen4"))
}
shinyApp(ui=ui,server=server)


#Boxplot
library(ggplot2)
View(iris)
ggplot(iris,aes(y=Petal.Length,x=Species,fill=Species))+geom_boxplot()

ui=fluidPage(plotOutput(outputId = "p3"))
server<-function(input,output){
               output$p3<-renderPlot(ggplot(iris,aes(y=Petal.Length,x=Species,fill=Species))+geom_boxplot())
                              }
shinyApp(ui=ui,server=server)

#combing input and output
ui=fluidPage(sliderInput(inputId = "Slider1",label = "Select Value",min = 0, max = 100,value = 50),
            plotOutput(outputId = "hist"))
server<-function(input,output){
          output$hist=renderPlot(hist(rnorm(input$Slider1), col="cadetblue"))
}
shinyApp(ui=ui,server=server)

#--------------------------------End Session 1----------------------------------

#Click Counter
ui=fluidPage(actionButton(inputId = "b1",label = "click"), textOutput(outputId = "result"))
server<-function(input,output){
  output$result<-renderText(as.numeric(input$b1))
}
shinyApp(ui=ui,server=server)

#economic Application

econ<-read.csv("economics.csv")
View(econ)

ui<-fluidPage(selectInput(inputId = "si1",label = "Choose Column",choices = c("Personal Savings Rate"=2,
                                                        "Personal Saving Expenditure"=3,"Number of Unemployed"=4,
                                                        "Mean duration of unemployement in thousand"=5)),
              selectInput(inputId = "si2",label = "Choose Color",choices = c("cadetblue","palegreen4","darkmagenta","coral")),
              sliderInput(inputId = "slider1",label = "Select Bin Value", min=30, max=100, value = 30,animate = TRUE),
              plotOutput(outputId = "hist"))

server<-function(input,output){
  output$hist=renderPlot({option=as.numeric(input$si1)
  ggplot(econ,aes(x=econ[,option]))+geom_histogram(fill=input$si2,col="blue",bins = input$slider1)})
}
shinyApp(ui=ui,server=server)

