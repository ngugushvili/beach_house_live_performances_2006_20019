# 13.08.2020

library(shiny)

library(dplyr)

library(leaflet)

library(reactable)

  
function(input, output, session) {


# Create the map
output$bhmap <- renderLeaflet({
  leaflet(bhraw) %>%
    addProviderTiles("Esri.WorldTopoMap")%>% 
    addMarkers(data = bhraw, 
               clusterOptions = markerClusterOptions(freezeAtZoom = 10),
               lat = ~ LAT, lng =  ~ LNG, popup =  ~newdate)
})

# create reactable 




output$table <- renderReactable({
    reactable(beach_house, bordered  = T, highlight = T, filterable = T, searchable = T, paginationType = "jump")
  })

# create verbatim summary 

output$summary <- renderPrint({
        summary(beach_house)
})

}



