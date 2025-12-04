library(data.table)
library(dplyr)
library(gapminder)
library(GGally)
library(ggmap)
library(ggplot2)
library(gganimate)
library(gh)
library(githubr)
library(janitor)
library(jpeg)
library(readxl)
library(tidyr)

read.csv('Data/mushroom_growth.csv')

mush = read.csv('Data/mushroom_growth.csv')
View(mush)

prettyplot = mush %>% 
  ggplot(aes(x = GrowthRate,
             y = Nitrogen,
             fill = Species,
             color = Light))+
  labs(x = 'niTROgeine',
       y = 'R8grwth')+
  geom_point(alpha = 0.2, size = 15)+
  facet_wrap(~ Humidity)+
  facet_grid(~ Light)+
  theme(axis.text.x = element_text(angle = 175, hjust = 1, face = 'bold', size = 25),
        strip.background = element_blank(),)
ggsave("prettyplot.jpeg")
prettyplot
