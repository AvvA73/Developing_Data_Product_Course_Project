#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
shinyUI(fluidPage(
  titlePanel("Prediction for Diabetes"),
  sidebarLayout(
    sidebarPanel(
      numericInput(inputId="tcol",label="Total cholesterol (mg/dl)",value=80,min=30,max=1000,step=1),
      numericInput(inputId="ldl",label="LDL cholesterol (mg/dl)",value=80,min=30,max=1000,step=1),
      numericInput(inputId="trig",label="triglyceride (in mg/dl)",value=80,min=30,max=1000,step=1),
      submitButton("Submit")
    ),
    mainPanel(
      h2("Your results"),
      h3("HDL cholesterol"),
      textOutput("text1")
    )
    )
  ))
