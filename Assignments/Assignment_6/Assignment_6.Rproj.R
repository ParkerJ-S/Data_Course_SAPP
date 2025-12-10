# **Assignment 6**

library(data.table)
library(dplyr)
library(gapminder)
library(GGally)
library(ggmap)
library(ggplot2)
library(gganimate)
library(gh)
library(githubr)
library(jpeg)
library(tidyr)
library(tidyverse)
library(gifski)

dat = read.csv('../Data_Course_SAPP/Data/BioLog_Plate_Data.csv')

View(dat)

tidy_dat = dat %>% 
  rename('24' = Hr_24, '48' = Hr_48, '144' = Hr_144)

tidy_dat = tidy_dat %>% 
  pivot_longer(c(6, 7, 8),
               names_to = "Time",
               values_to = "Absorbance")

View(tidy_dat)

tidy_dat = dat %>% 
  rename('24' = Hr_24, '48' = Hr_48, '144' = Hr_144) %>%
  pivot_longer(
    cols = c('24', '48', '144'),
    names_to = "Time",
    values_to = "Absorbance"
  ) %>%
  mutate(Time = as.numeric(Time)) %>%
  mutate(
    Source = case_when(
      Sample.ID == 'Clear_Creek' ~ "Water",
      Sample.ID == 'Waste_Water' ~ "Water",
      Sample.ID == 'Soil_1' ~ "Soil",
      Sample.ID == 'Soil_2' ~ "Soil"
      )
    ) %>%
  drop_na(Time, Absorbance, Sample.ID, Substrate)

mean_data = tidy_dat %>%
  filter(Dilution == 0.1) %>%
  group_by(Source, Time, Substrate) %>%
  summarize(
    Mean_Absorbance = mean(Absorbance, na.rm = TRUE),
    .groups = 'drop'
  )

substrate_plot = ggplot(mean_data, aes(x = Time, y = Mean_Absorbance, color = Source)) +
  geom_smooth(linewidth = 0.5) + 
  facet_wrap(~ Substrate, ncol = 6) +
  labs(
    title = "Absorbance in all Substrates (Average, Dilution 0.1)",
    y = "Absorbance",
    x = "Time (Hours)"
  ) +
  theme_minimal() +
  scale_color_manual(values = c("Soil" = "#00798C", "Water" = "#D1495B")) +
  theme(
    panel.grid.major.x = element_blank(),
    axis.line = element_line(colour = "black"),
    legend.position = "right"
  )

print(substrate_plot)

ggsave("Assignments/Assignment_6/substrate_plot.png", 
  plot = substrate_plot
)

all_samples_data = tidy_dat %>%
  drop_na(Time, Absorbance)

animation_data = tidy_dat %>%
  filter(is.finite(Time) & is.finite(Absorbance)) %>% 
  drop_na(Time, Absorbance, Sample.ID, Substrate)

all_substrates = ggplot(animation_data, aes(x = Time, y = Absorbance, color = Sample.ID)) +
  geom_line(aes(group = Sample.ID), linewidth = 1) +
  geom_point(size = 2) +
  facet_wrap(~ Substrate, ncol = 6) + 
  labs(
    title = 'Absorbance Over Time Across All Substrates',
    y = "Absorbance",
    x = "Time (Hours)"
  ) +
  theme_minimal() +
  theme(legend.position = "right") +
  transition_reveal(Time)


animated_plot = animate(all_substrates, 
                         duration = 10, 
                         fps = 15, 
                         width = 1000,
                         height = 600,
                         renderer = gifski_renderer())
print(animated_plot)

anim_save("Assignments/Assignment_6/my_animation.gif", animation = animated_plot)
