
library(rworldmap)
library(dplyr)
library(ggplot2)
library(geosphere)
library(gpclib)
library(plotly)
library(sf)

------------------
#1)
fig3 <- plot_ly(gdp, type='choropleth', locations=gdp$CODE, z=gdp$GDP..BILLIONS., text=gdp$COUNTRY, colorscale="Viridis")
fig3

#2)
library(plotly)
volcano
# volcano is a numeric matrix that ships with R
fig <- plot_ly(z = ~volcano)
fig <- fig %>% add_surface()
fig

#3)

fig <- plot_ly(gdp, type = 'scatter', mode = 'lines')%>%
  add_trace(x = ~GDP..BILLIONS., y = ~COUNTRY)%>%
  layout(showlegend = F, xaxis = list(range = c()))

fig <- fig %>%
  layout(
    xaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    yaxis = list(zerolinecolor = '#ffff',
                 zerolinewidth = 2,
                 gridcolor = 'ffff'),
    plot_bgcolor='#e5ecf6', width = 900)
fig

#4)

library("rnaturalearth")
library("rnaturalearthdata")
world <- ne_countries(scale = "medium", returnclass = "sf")
class(world)
?scale_fill_viridis_c()
ggplot(data = world) +
  geom_sf(aes(fill = pop_est)) +
  scale_fill_viridis_c(option = "inferno", trans = "sqrt")
 
