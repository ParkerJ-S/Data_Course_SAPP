# **Assignment 6**

In this assignment, you will use R (within R-Studio) to:
  
+ Load an untidy data set
+ Tidy it using tidyr and dplyr verbs
+ Plot it with ggplot


**All file paths should be relative, starting from *your* Assignment_6 directory!!**
  
**This means that you need to create a new R-Project named "Assignment_6.Rproj" in your Assignment_6 directory, and work from scripts within that.**
  
  ## **For credit...**
  
1.  Push a completed version of your Rproj and R-script (details at end of this assignment) to GitHub
2.  Your score will also depend on whether any files generated in this workflow are found in your repository


____________
First, we can load the *tidyverse* package and import an untidy data set
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
library(tidyverse)
library(skimr)
library(measurements)
library(easystats)
library(MASS)
library(knitr)

dat = read.csv('../Data_Course_SAPP/Data/BioLog_Plate_Data.csv')
View(dat)

As you might be able to tell from the column names, this data set is all about the ability of various environmental samples to utilize different carbon sources. Each plate has 96 wells and in each well is a fluorescently labeled carbon source. You dilute an environmental sample and add it to each of the wells in a plate and then read light absorbance over time. Higher absorbance values indicate more utilization of that carbon source by the microbes present in the sample. 

Here, we have real data from 4 environmental samples (two soil and two water samples), and their absorbance values at 24, 48, and 144 hours. These plate experiments were repeated at 3 increasing dilutions for each sample source.

# Your task is to Write an R script that:

1.  Cleans this data into tidy (long) form

***Combine the different time periods into one column and separate the absorbance values into their own column***
  
View(dat)
tidy_dat = dat %>% 
  rename('24' = Hr_24, '48' = Hr_48, '144' = Hr_144)
View(tidy_dat)

tidy_dat = tidy_dat %>% 
  pivot_longer(c(6, 7, 8),
               names_to = "Time",
               values_to = "Absorbance")
View(tidy_dat)

2.  Creates a new column specifying whether a sample is from soil or water

unique(tidy_dat$Sample.ID)
tidy_dat = tidy_dat %>% 
  mutate(Source = case_when(Sample.ID == 'Clear_Creek' ~ "Water",
                               Sample.ID == 'Waste_Water' ~ "Water",
                               Sample.ID == 'Soil_1' ~ "Soil",
                               Sample.ID == 'Soil_2' ~ "Soil"))
View(tidy_dat)

3.  Generates a plot that matches this one (note just plotting dilution == 0.1):

tidy_dat $Time = as.numeric(as.character(tidy_dat$Time))

tidy_dat %>% 
  ggplot(aes(x = Time, y = Absorbance, color = Source,))+
  geom_line(aes(group = Source))+
  facet_wrap(~ Substrate)

4.  Generates an animated plot that matches this one (absorbance values are mean of all 3 replicates for each group):
  This plot is just showing values for the substrate "Itaconic Acid"

```{r, echo=FALSE,out.width=600}
knitr::include_graphics("../../../media/biolog2.gif")
```
