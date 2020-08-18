#
# 13.08.2020 version 

library(shiny)
library(leaflet)
library(reactable)
library(shinythemes)

navbarPage("Beach House live performances 2006-2019",id="main", theme = shinytheme("united"),
           tabPanel("Map", leafletOutput("bhmap", height=500)),
           tabPanel("table", reactableOutput("table")),
           tabPanel("summary", verbatimTextOutput("summary")),
           tabPanel("About this project",includeMarkdown("readme.md")))
