library(shiny)
library(dplyr)

operaciones<-c("Add","Substract","Multiply","Divide")

shinyUI(fluidPage(
    titlePanel("Arithmetic operations with 2 numbers from 0 to 100"),
    tags$h4("This is an exercise designed for childrens ages 8-9 to perform simple arithmetic operations on two numbers from 0 to 100"),
    tags$h5(" "),
    tags$h5("First, type your name in the first box, then the two numbers with which you want to operate and finally select one of the 4 boxes"),
    tags$h5("The first tab will provide you with the result of the operation of these two numbers and the second, a table with the result of 
            the four operations and a scatterplot of these results."),
    sidebarLayout(
        sidebarPanel(
            textInput("box1","What's your name?:", value="My name is" ),
            numericInput("numeric1","Enter first number", value=0, min = 0, max = 100,step=1),
            numericInput("numeric2","Enter second number",value = 0, min=0, max = 100,step= 1),
            radioButtons("opc","Operation",operaciones)
            
        ),
        
        mainPanel(
            tabsetPanel(type="tabs",
                        tabPanel("Operation",br(),textOutput("out1"),textOutput("multi"),p("I hope it is useful for you")),
                        tabPanel("Graph",br(),tableOutput("table1"),plotOutput("plot1"),
                                  img(src="Rana.png",height=90,width=230),
                                  p("Do you remember this frog?"))
            ),
        )
    )
))

