
library(leaflet)
library(tidyverse)
# read site geo data and set marker colors based on type of site
sites <-
  read_tsv(file = 'data/sites.tsv') |>
  mutate(
    color = case_when(
      type == 'LTC' ~ 'cadetblue',
      type == 'University' ~ 'purple',
      type == 'Daycare' ~ 'green',
      type == 'School' ~ 'orange',
      TRUE ~ 'red'
    ))
# Possible values are "red", "darkred", "lightred", "orange", "beige", "green",
# "darkgreen", "lightgreen", "blue", "darkblue", "lightblue", "purple",
# "darkpurple", "pink", "cadetblue", "white", "gray", "lightgray", "black"

# define Marker style
icons <- awesomeIcons(
  icon = 'cube',
  library = 'ion',
  iconColor = 'white',
  spin = F,
  markerColor = sites$color
)
# map for Toronto sites
zmlvl <- 10
toronto_map <-
  leaflet::leaflet(width = '100%', height = 300, padding = '5px') |>
  setView(lng = -79.34, lat = 43.74, zoom = zmlvl)  |>
  addProviderTiles(
    provider = providers$CartoDB.Positron,
    options = providerTileOptions(minZoom = zmlvl-1, maxZoom = zmlvl+1)
  ) |>
  addAwesomeMarkers(
    data = sites, lng = ~ lon, lat = ~ lat,
    icon = icons, popup = ~str_trim(type)
  )
# map for Ottawa sites
zmlvl <- 9
ottawa_map <-
  leaflet::leaflet(width = '100%', height = 300, padding = '5px') |>
  setView(lng = -75.67, lat = 45.40, zoom = zmlvl)  |>
  addProviderTiles(
    provider = providers$CartoDB.Positron,
    options = providerTileOptions(minZoom = zmlvl-1, maxZoom = zmlvl+1)
  ) |>
  addAwesomeMarkers(
    data = sites,
    lng = ~ lon,
    lat = ~ lat,
    icon = icons,
    popup = ~type,
    clusterOptions = markerClusterOptions(freezeAtZoom = 9)
  )

library(htmltools)
browsable(
  tagList(list(
    tags$div(
      style = 'width:50%;display:block;float:left;padding:2px;',
      toronto_map
    ),
    tags$div(
      style = 'width:50%;display:block;float:left;padding:2px;',
      ottawa_map
    )
  ))
)

# maps - need to obscure where sites are actually located
zmlvl <- 5
ontario_map <-
  leaflet::leaflet(width = '100%', height = 300, padding = '5px') |>
  setView(lng = -75.67, lat = 45.40, zoom = zmlvl)  |>
  addProviderTiles(
    provider = providers$CartoDB.Positron,
    options = providerTileOptions(maxZoom = zmlvl+1)
  ) |>
  addAwesomeMarkers(
    data = sites,
    lng = ~ lon,
    lat = ~ lat,
    icon = icons,
    label = ~type,
    popup = ~type,
    clusterOptions = markerClusterOptions(freezeAtZoom = 5)
  )
ontario_map
