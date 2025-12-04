# Load Packages####
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
library(palmerpenguins)
library(htmltools)
## file extension
.txt
.csv
.R
.RProj

#1+1 ####
## 2nd Header ####

an_object = 1+1

# object in R
# Vector: One dim, same type (numeric)
# Matrix: Two dim, same type (numeric) 
# Array:
# Data Frame: 
# List:

### Objects ####

adding a new object 

chips = ch

vector = c(1, 2, 3, 4)
cha = c('apple,' 'orange', 'banana', 'blue')
c('apple', 'orange', 'banana', 'blue')

y = c(1, 'apple', TRUE)

vec1 = c(1, 2, 3)
vec2 <- c(2, 3, 4)
vec1 + 1
vec1*2
vec1^2

vec1 + vec2
vec1 + y

vec1 = c(1, 2, 3)
vec1 + 1
vec1*2
vec1^2

vec1 + vec2
vec1 + y
y = c(1, 'apple', TRUE)
is. numeric(vec1)
is.numeric(vec1)
vec3 +1
as.numeric(vec1_non_num)
vec1_non_num = c('1', '2', '3')
new_obj =as.numeric(vec1_non_num)

### Lists ####
list()
list_1 <- list()

pattern = "\\.csv$": This is a regular expression that filters for files ending with .csv
length(list.files(path = "data", pattern = "\\.csv$", ignore.case = TRUE))

### Loops ####

write a for-loop print out penguin, bird, fish, whale

'penguin', 'bird', 'fish', 'whale' = x
artic_animals = vecx
arctic_animals = vecx
arctic_animals = x

### vectors ####


fruit = c('banana', 'banana', 'apple', 'orange')
fac_fruit = as.factor(fruit)

?apply(df_car, 2, as.character)
df_car_new = apply(mtcars, 2, as.character)

zoo = c('penguin', 'bird', 'fish', 'whale')
for (i in zoo) {
  print(i)
}

vec = c(1, 2, 3, 4, 5)
for (i in vec) {
  print(vec)
}

for (animal in zoo) {
  for (number in vec) {
    print(animal)
    print(number)
  }
}

  out = paste(animal, number)
  print(out)

  
### Create new column ####
  
  #create new column called 'fruit'
  #fill in vector with fruit
  
vec_fruit = c('cherries', 'raspberries', 'apple')
dat_BIOL3100 = data.frame(
  Name = c('Evangeline', 'Hasan', 'Tyler'),
  favorite_no = c(7, 8, 7)
)  

### Data Frame ####

new_df = data.frame(
  Name = c('Evangeline', 'Hasan', 'Tyler')
  favorite_no = c(7, 8, 7)
)

new_df$Name
new_df$favorite_no
new_df$fruit = vec_fruit

new_fruit = c('pineapple', 'banana', 'kiwi')

new_df[1,2]

dat_BIOL3100 = new_df

for (i in 1:nrow(new_df)){
  new_df$animal[i]
}

df_bird = read.csv('Data/BioLog_Plate_Data.csv')
head(df_bird)
tail(df_bird)

readLines(df_bird)
?readLines('Data/BioLog_Plate_Data.csv')
head(df_bird, n=2)

 vc### Data Set ####


df_iris[, -1]
data(iris)

mtcars

df_cars = mtcars
dim(df_cars)
names(df_cars)
view(df_cars)
View(df_cars)

sum(df_cars$mpg)

DOLLAR SIGN MEANS TAKE SOMETHING OUT

df_cars$mpg > 20
df_good_car = df_cars
df_cars[1:3, ]

#### create a new object called 'car_4'. Save only cars with 4 cylinders ####

df_cars$cyl 4
df_cars
df_cars$ = new_obj
new_obj = df_cars
df_cars

df_cars$cyl
car4 = df_cars[df_cars$cyl == 4,]
car4
car4
mtcars
df_cars
mtcars

### View ####

View(car4)
car1 = df_cars[df_cars$mpg > 20,]
View(car1)

View(df_cars[df_cars$mpg > 20 & df_cars$cyl == 4, ]

### Recursive File Search ####

b_file = list.files('Data/', pattern = 'csv', recursive = T)
list.files('Data/', pattern = 'b$', recursive = T)

b_file = list.files('Data/', pattern = "^b")

### Convert every column to character in mtcars ####

#### Loops 2 ####
ncol() = the number of columns in a dataset
as.character(mtcars)
View(mtcars)

for (col in names(df_cars)) {
  df_cars[, col] = as.character(df_cars[, col])
}

The above command lists all of the following in one loop

df_car[, 'mpg'] = as.character(df_car[, 'mpg'])
df_car[, 'cyl'] = as.character(df_car[, 'cyl'])
df_car[, 'disp'] = as.character(df_car[, 'disp'])
etc...


### Inspect Lines ####

Inspect the first 5 lines of this data set using the head() function
head(df_cars, n= 5)

#### Write 1st Line ####

first_line <- readLines('Data/', "^b" n = 1)
first_line <- readLines('b_file', n = 1)
for (b_file in 'Data/') {
  n = 1
}
# Practice ####
## 1. Create a dataframe using mtcars, for mpg > 20 and cyl = 6 ####

df_cars = mtcars
View(df_cars[df_cars$mpg > 20 & df_cars$cyl == 6, ])
df_carsv2 = df_cars[df_cars$mpg > 20 & df_cars$cyl == 6, ]
View(df_carsv2)

## 2. In the data frame add a new column mpg x cyl ####

df_carsv2$new_col = new_col
new_col = df_carsv2$mpg * df_carsv2$cyl
View(df_carsv2)

## 3. Write a for loop to bring out each row ####

df_carsv2[1, ]
df_carsv2[2, ]
df_carsv2[3, ]
for (i in 1:3) {
  print(df_carsv2[, i])
}

## 4. read/load data ####
read.csv()
write.csv()

## 5. Save a file as a new data frame ####

as.data.frame(file name)

## 6. Packages ####

install.packages(package name)

load the package with...

library(package name)

## Bar graphs####
geom_bar

penguins %>% 
  ggplot(aes(x = bill_len,
             fill = sex)) +
  geom_bar(position = 'dodge')

#Upload path for Github####



# Final Project Notes####
WOLVES!!!! maybe ELK????
  use data sets from either
https://www.kaggle.com/datasets
https://datasetsearch.research.google.com/
https://cran.r-project.org/web/packages/available_packages_by_name.html

CRAN package in R

#EXAMS####
exams are in GITHUB under biol3100_exams

USE GITCLONE TO DOWNLOAD THE EXAMS
git clone ~paste html~
  
  
### ! = NOT
  
x = 
x
is.na(x)
!is.na(x)

# filter (what we want to keep)

select() ~removes
filter() ~keeps

### New Notes####

## Find the fat penguin with body mass > 5000
## Count how many of them are male and female
## Return the max body mass for male and female
## Add new column to penguin data to tell whether they're fat

Library = 1
library(tidyverse)
install.packages(tidyverse)
read.csv('cleaned_bird_data')

install.packages("palmerpenguins")

df_bird = read.csv('Data/cleaned_bird_data.csv')
penguins

View(pengiuns)
View(penguins)

dat_peng = penguins

dat_peng %>%
  filter(body_mass > 5000) %>%
  group_by(sex) %>%
  summarize(no_bird = n(),
            max_weight = max(body_mass))


dat_peng %>%
  mutate(new_fat = dat_peng$body_mass_g > 5000) %>%
  view()

dat_peng %>%
  mutate(new_fat_fat = dat_peng$body_mass_g > 5000) %>%
  view()

new_peng = dat_peng %>%
  mutate(fatstat = case_when( body_mass > 3000 & body_mass <= 5000~ 'Fat', 
                              body_mass > 5000 ~ 'Obese')) %>%
  view()


#if penguin has body mass > 5000, that is fat.
#condition ~ if condition is TRUE, then do...
#if (1st condition), then...
#if (2nd condition), then...
#

library(ggplot2)
penguins

ggplot(data = penguins,
       aes(x = body_mass_g,
           y = bill_length_mm)) +
  geom_path()

dat_peng %>%
  filter(!is.na(sex)) %>%
  ggplot(aes(x = body_mass_g,
             y = bill_length_mm,
             color = sex)) +
  geom_point()

dat_peng %>%
  filter(!is.na(sex)) %>% 
  ggplot(aes(x = body_mass,
             y = bill_len,
             color = sex,
             shape = fatstat)) +
  geom_point() +
  scale_color_manual(values = c("magenta4","seagreen")) +
  scale_shape_manual(values = c(8, 11)) +
  labs(x = "weight (g)",
       y = 'bill_length (mm)',
       title = 'Penguins Something') +
  geom_smooth(se = F)

##convert this into 'pipe format'
max(round(iris$Sepal.Length),0)

iris$Sepal.Length %>%
  round() %>%
  max(,0)

### ! = NOT

x = 
  x
is.na(x)
!is.na(x)

# filter (what we want to keep)

select()

penguins %>%
  names()

view(penguins[, -8])

penguins %>%
  select(-c(year, island)) %>%
  mutate(year = 100) %>%
  View()

dat_peng %>%
  filter(!is.na(sex)) %>% 
  ggplot(aes(x = body_mass_g,
             y = bill_length_mm,
             color = sex,)) +
  geom_point() +
  theme(axis.text.x = element_text(angle = 180, face = 'bold'))

## make an interesting graph using penguins data
## no geom_point

geom_bar

penguins %>% 
  ggplot(aes(x = bill_length_mm,
             fill = sex)) +
  geom_bar(position = 'dodge') +
  theme(axis.text.x = element_text(angle = 180, face = 'bold.italic'))

plot = penguins %>% 
  ggplot(aes(x = bill_length_mm,
             fill = sex)) +
  geom_bar(position = 'dodge') +
  theme(axis.text.x = element_text(angle = 180, face = 'bold.italic'))

plot + theme_dark()

ggsave('../Desktop/my_penguin_plot')

library(tidyverse)
library(ggplot)
library(palmerpenguins)

setwd('/Users/sappy/Desktop/School/Data_Analytics/Data_Course_SAPP')
/Users/sappy/Desktop/School/Data_Analytics/Data_Course_SAPP)

ggsave('plot.png')
plot

penguins %>%
  ggplot(aes(x = species, 
             y = body_mass_g)) +
  geom_bar(stat = 'identity')

penguins %>%
  ggplot(aes(x = species, 
             y = body_mass_g)) +
  geom_col()

penguins %>%
  ggplot(aes(x = species, 
             y = body_mass_g)) +
  geom_bar(stat = 'identity')

penguins %>%
  ggplot(aes(x = species, 
             y = body_mass_g)) +
  geom_bar(stat = 'identity') +
  geom_errorbar(aes(ymin = mean() - sd()),
                ymax = mean() + sd())

penguins %>%
  filter(!is.na(body_mass_g)) %>%
  group_by(species, sex) %>%
  summarise(avg_weight = mean(body_mass_g),
            sd_weight = sd(body_mass_g)) %>%
  ggplot(aes(x = species,
             y = avg_weight,
             fill = sex)) +
  geom_bar(stat = 'identity', position = 'dodge') +
  geom_errorbar(aes(ymin = avg_weight - sd_weight,
                    ymax = avg_weight + sd_weight),
                position = position_dodge(width = 0.9),
                width = 0.7) +
  scale_y_continuous(expand = c(0,0)) +
  labs(title = "Penguin weight by species and sex") 

penguins %>%
  mutate(flipper_group = case_when(flipper_length_mm > 205 ~'Big Flippers',
                                   TRUE ~'Small')) %>% 
  ggplot(aes(x = flipper_group,
             y = body_mass_g,
             fill = sex)) +
  geom_histogram(stat = 'identity', position = 'dodge',
                 alpha = 0.5)

##make histogram

###different plots are different geoms
#make a boxplot to show weight across years

penguins %>%
  ggplot(aes(x = factor(year),
             y = body_mass_g,
             fill = species)) + 
  geom_boxplot() +
  geom_jitter(alpha = 0.5)

unique(penguins$year)
str(penguins)

penguins %>%
  ggplot(aes(x = body_mass_g,
             fill = species)) +
  geom_density()

#read 'Users/sappy/Desktop/Data_Course_SAPP/Data/DatasaurusDozen.tsv

read.csv(/Users/sappy/Desktop/Data_Course_SAPP/Data/DatasaurusDozen.tsv)

df = read_tsv('Data/DatasaurusDozen.tsv')
view(df)
cvs = comma separated
tsv = tab serparated
txt = text file

unique(df$dataset)

df %>%
  group_by(dataset) %>%
  summarise(mean_x = mean(x),
            max_x = max(x),
            min_x = min(x),
            mean_y = mean(y),
            max_y = max(y),
            min_y = min(y))

df %>%
  ggplot(aes(x = x,
             y = y)) +
  geom_point()

df %>%
  ggplot(aes(x = x,
             fill = dataset)) +
  geom_density(alpha = 0.5)

df %>%
  ggplot(aes(x = x,
             y = y)) +
  geom_point() +
  facet_wrap(~ dataset)

# Always plot your graph first!####

##Install "GGally" from 'Files' tab in bottom right window
install.packages("GGallly")

ggpairs(df)
GGally::ggpairs()

library(palmerpenguins)
ggpairs(penguins) ((((USED TO COMPARE DATA AND SEE WHATA YOU WANT TO USE))))

##create script for penguins using island, sex, species, body mass (y-axis), and bill depth (x-axis)
view(penguins)

penguins %>%
  filter(!is.na(sex)) %>%
  ggplot(aes(x = bill_depth_mm,
             y = body_mass_g,
             color = sex,
             )) +
  geom_point(alpha = 0.5, size = 4) +
  facet_wrap(~ species) +
  scale_colour_viridis_d(end = 0.8)

simple_plot = penguins %>%
  filter(!is.na(sex)) %>%
  ggplot(aes(x = bill_depth_mm,
             y = body_mass_g,
             color = sex,
  )) +
  geom_point(alpha = 0.5, size = 4) +
  facet_wrap(~ species) +
  scale_colour_viridis_d(end = 0.8)

simple_plot +
  scale_colour_viridis_d(end = 0.8)

penguins %>%
  filter(!is.na(sex)) %>%
  ggplot(aes(x = bill_depth_mm,
             y = body_mass_g,
             color = sex,
  )) +
  geom_point(alpha = 0.5, size = 4) +
  facet_wrap(~ species) +
  labs(x = 'Bill Depth (mm)',
       y = 'Body Mass (g)',
       color = 'Sex')+
  theme(axis.title = element_text(face = 'bold', size = 12),
        strip.background = element_blank(),
        strip.text = element_text(face = 'bold', size = 12)) +
  scale_colour_viridis_d(end = 0.8)


# Patchwork
library(patchwork)
simple_plot + dino_plot
simple_plot / dino_plot
(simple_plot + dino_plot) / dino_plot

plot_annotation()

#Labels individual graphs

##Install "gapminder" for next class.

## make a cool annimated plot
## label the country


### SAVING ####
*goes to working directory* make sure to remove any view() functions
ggsave("specific_plot.jpeg/.pdf")
anim_save()

install.packages("gapminder")







view(gapminder)

unique(gapminder$country)
unique(gapminder$year)
range(gapminder$year)

df = gapminder
ggpairs(df)

df %>% 
  group_by(continent, year, pop) %>% 
  summarise(avg_lifeExp = mean(lifeExp)) %>% 
  ggplot(aes(x = year,
             y = avg_lifeExp,
             color = continent)) +
  geom_point(aes(size = pop)) +
  geom_line()
facet_wrap(~ continent)

p1 = df %>% 
  ggplot(aes(x = gdpPercap,
             y = lifeExp,
             color = continent)) +
  geom_point(aes(size = gdpPercap,
                 shape = continent)) +
  facet_wrap(~ continent)

ani = p1 + transition_time(year) +
  labs(title = 'Year: {frame_time}')

install.packages("Transition")
install.packages(transitiont)

install.packages("gganimate")
install.packages("gapminder")


vjust and hjust change horizontal and vertical adjustments

cool_country = c('Kuwait', 'United States', 'Saudi Arabia', 'Argentina', 'Chile', 'Cambodia')
unique(df$country)

df$new_col = if

df %>%
  mutate(cool_country = case_when(country %in% cool_country ~ country )) %>%
  ggplot(aes(x = gdpPercap.
             y = lifeExp,
             ))
  

###maps####
install.packages("leaflet")
install.packages("ggmap")
## add longitude and latitude

world.map = get_map()

## read
## plot rent by state
read.csv('Data/wide_income_rent.csv')

df = read.csv('/Users/sappy/Data_Course/Data/wide_income_rent.csv')
view(df)

ggplot(aes())

dat = read_csv('Data/wide_income_rent.csv')
view(dat)
dim(dat)

dat_t = t(dat)
view(dat_t)

dat_t_2 %>%
  ggplot(aes(x = state, y = rent,)) +
  geom_bar(stat = 'identity') +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

##PIVOTS####

?pivot_longer
?pivot_wider

dat = data.frame(
  id = c(1, 2, 3),
  height = c(100, 200, 300),
  weight = c(150, 160, 107)
)
dat_bad = dat %>%
  pivot_longer(col = c(height, weight),
               names_to = 'measure',
               values_to = 'value')

dat_bad %>%
  pivot_wider(names_from = 'measure',
              values_from = 'value')

dat_bad = dat %>%
  pivot_longer(col = c('weight', 'height'),
               names_to = 'measure',
               values_to = 'value')

dat_good = dat_bad %>%
  pivot_wider(names_from = 'measure',
              values_from = 'value')
dat_good


dat %>%
  pivot_longer(col = c(height, weight),
               names_to = 'meausre',
               values_to = 'value')

cols = ''
cols = c('height', 'weight')
cols = everything()
cols = -

dat %>%
  pivot_longer(col = -variable
               
dat_bad

dat = read_csv('Data/wide_income_rent.csv')
dat
read_csv('Data/')

table3 %>%
  separate(rate, c('cases', 'population'))

table4a
table4b

new_table4a = table4a %>%
  pivot_longer(-country, names_to = 'year',
               values_to = 'cases')

new_table4b = table4b %>%
  pivot_longer(-country, names_to = 'year',
               values_to = 'population')

full_join(new_table4a, new_table4b)

## FOR FULL JOIN TO WORK, AT LEAST ONE COLUMN MUST BE THE SAME IN ALL TABLES*

table5 %>%
  separate(rate, c('cases', 'population')) %>%
  mutate(year = paste0(century, year)) %>%
  select(-century) %>%

paste(table5$century, table5$year)
paste0(table5$century, table5$year)

new_table5 = table5 %>%
  separate(rate, c('cases', 'population'), convert = T) %>%
  mutate(year = paste0(century, year)) %>%
  select(-century)

sum(new_table5$cases)  

geom_smooth('loses')
# lm = 
# 

exam = '2025-10-23'
date = Sys.Date()
time = Sys.time()
exam = date
str(date)
class(date)
class(time)
class(exam)

as.Date(exam, format = )
as.Date('2025-10-23', format = '%d-%b-%y')

library(readxl)
read_xlsx()

install.packages("pop.wolf")
view('pop.wolf')
read_csv('pop.wolf')
read_file('pop.wolf')
pop.wolf
view()

library(readxl)
dat = read_xlsx('/Users/sappy/Data_Course/Data/messy_hr.xlsx',
                skip = 3)

/read_xlsx
dim(dat)
view(dat)



dat[-1, 1]

dat = read_xlsx('/Users/sappy/Data_Course/Data/messy_hr.xlsx')

dat_bp = dat%>% 
  select(-starts_with('HR')) %>% 
  pivot_longer(cols = starts_with('BP'),
               names_to = 'visit',
               values_to = 'bp') %>% 
  mutate(visit_fixed = case_when(visit == 'bp...8' ~1,
                                 visit == 'bp...10' ~2,
                                 visit == 'bp...12' ~3)) %>% 
  separate(bp, c('sys', 'dia'), convert = T) %>% view()

dat_hr = dat%>% 
  select(-starts_with('BP')) %>% 
  pivot_longer(cols = starts_with('HR'),
               names_to = 'visit',
               values_to = 'hr') %>% 
  mutate(visit_fixed = case_when(visit == 'hr...8' ~1,
                                 visit == 'hr...10' ~2,
                                 visit == 'hr...12' ~3)) %>% 
  separate(hr, c('sys', 'dia'), convert = T) %>% view()

df_2 = full_join(dat_bp, dat_hr)
view(df_2)

df_2 %>% 
  mutate(race_fixed = case_when(Race =='Caucasian' ~ 'White',
                                Race =='White' ~ 'White',
                                Race =='WHITE' ~ 'White',
                                T ~Race)) %>% view()
#I = or
#& = and

df_2$`Day birth`

colnames(df_2) =c('pat_id', 'Month_of_birth', '')

install.packages('janitor')
library("janitor")

clean_names()
make_clean_names()

make_clean_names('# of cookies')

df_2 %>% 
  clean_names()

Include clean_names() at the beginning or the end of code.

df3 = df_2 %>% 
  clean_names() 
view(df3)

df3 %>% 
  mutate(birthday = paste(month_of_birth, day_birth, year_birth, sep ='-')) %>% 
  select(-c(month_of_birth, day_birth, year_birth)) %>% 
  arrange(pat_id) %>% 
  mutate(new_id = rep(1:(nrow(df3)/3), each = 3)
         
         
##Make a plot of BP data
##
dat = read.csv('Data/Bird_Measurements.csv')
View(dat)

view('Data/data-shell/creatures/basilisk.dat')
read.csv('Data/data-shell/creatures/basilisk.dat')
View('Data/data-shell/creatures/basilisk.dat')
View('Data/data-shell/creatures/basilisk.dat')
View('Data/mushroom_growth.csv')
read.csv('Data/mushroom_growth.csv')

##r-graph-gallery.com####
go to r-graph-gallery.com for many graph examples and scripts

## make a plot for BP data

read.csv('BP')
View('Data/messy_bp.xlsx')

read_xlsx('/Data_Course/Data/messy_hr.xlsx')
read_xlsx('/Users/sappy/Data_Course_SAPP/Data/messy_hr.xlsx')
mess = read_xlsx('Data/messy_bp.xlsx')
df3 %>% 
  ggplot(aes(x = visit,
             color = race))+
  geom_path(aes(y = sys))+
  geom_path(aes(y = dia))+
  facet_wrap(~ race)

df3 %>% 
  pivot_longer(c('sys', 'dia'), names_to = 'bp_type',
               values_to = 'bp') %>%
  ggplot(aes(x = visit, y = bp, color = bp_type))+
  geom_path()+
    facet_grid(sex ~ race)

dat = read.csv('Data/Bird_Measurements.csv')
View(dat)  

#Change names to be more clear on male and female data. is N supposed to be mass in newtons?
  
install.packages('skimr')
library("skimr")
skim(dat)

iwant = c("Family", "Species_number", "Species_name", "English_name", "Clutch_size", "Egg_mass", "Mating_System")



dat_m = dat%>% 
  select(iwant, starts_with('M'), -ends_with('_N')) %>% 
  View()

dat_f = dat %>% 
  select(iwant, starts_with('F'), -ends_with('_N')) %>% 
           View()

dat_u = dat %>% 
  select(iwant, starts_with('Unsexed'), -ends_with('_N')) %>% 
  View()

newdat = dat %>% 
  select(iwant, starts_with('M'), starts_with('F'), -ends_with('_N')) %>% 
           View()

dat_m %>% 
  full_join(dat_f) %>% 
  full_join(dat_u) %>% View()

names(dat_m) = names(dat_m)

##Functions####
#anything with a () after.

full_join(mpg$cty)
mean(mpg$cty)
sum(mpg$cty)

#function without argument
date = function(){
  print('Today is Tuesday!!!')
}

date()

##function with an argument
add_value = function(x, y){
  result = x + y
  return(result)
}

add_value(2, 1)

clean_bird_dat = function(input_dat){
  
  iwant = c("Family", "Species_number", "Species_name", "English_name", "Clutch_size", "Egg_mass", "Mating_System")
}

#clean male

#clean female

#clean unsexed

#join

#return a cleaned data frame
return(clean_dat)

dat = read.csv('Data/Bird_Measurements.csv')
view(dat)
clean_dat = clean_bird_dat(dat)

##SOURCE####
source('My_function.R')
library(tidyverse)

devtools:: 

#make a function and use it
#load data 'height.xlsx'
#plot and determine whether female and male have different heights
  
funky = function(x,y){
  result = x + y
  return(result)
}


funky(2,3)
read_xlsx('Data/height.xlsx')
height = read_xlsx('Data/height.xlsx')
View(height)

height %>% 
  ggplot(aes(x = male),
       y = female)+
  geom_point()

height %>% 
  pivot_wider(names_from = 'male',
               values_from ='female')
               
sex = 
  
  
?t.test()

#Null hypothesis (H0)
#Alternative Hypothesis (Ha)

t.test(height$cm ~ height$sex)

#predictions

glm()

mod = glm(data = height,
    formula = cm ~ sex)

y = ax + b

summary(mod)

mpg
View(mpg)

t.test(mpg$displ ~ mpg$cty)

mod = glm(data = mpg,
          formula = cty ~ displ)
summary(mod)

mpg %>% 
  ggplot(aes(x = displ, y = cty))+
  geom_point()

str(mod)
mod$model$cty

mod$coefficients
mod$fitted.values

mod

plot(mod$model$cty, mod$fitted.values)
cor.test(mod$model$cty, mod$fitted.values, method = )
cor.test(mpg$displ, mpg$cty)

mpg %>% 
  ggplot(aes(x = displ, y = cty))+
  geom_point()+
  geom_smooth(method = 'glm')

-->y = -2.63x +25.99<--
###Models####
###Predicting####
## Build a model that predicts cty as a function of displ
  ## 'mpg' dataset
  ## Using displ to predict cty
  
  mod = glm(data = mpg,
            formula = cty ~ displ)
summary(mod)
str(mod)
mod$model
mod$formula
mod$coefficients

mpg %>% 
  ggplot(aes(x = displ, y = cty))+
  geom_point()+
  geom_smooth(method = 'glm')

cty = (-2.63)*displ + 25.99

mpg$pred1 = predict(mod, mpg)
data(mpg)
View(mpg)
(-2.63)*1.8 + 25.99

plot(mod$fitted.values, mpg$pred1)
predict(mod, data.frame(displ = 1:20))

range(mpg$displ)

report(mod)
performance(mod)
check_model(mod)

mod2 = glm(data = mpg,
           formula = cty ~ cyl)
summary(mod2)

mpg %>% 
  ggplot(aes(x = cty, y = cyl))+
  geom_point()+
  geom_smooth(method = 'glm')

mod3 = glm(data = mpg,
           formula = cty ~  %>% )
summary(mod3)

mod4 = glm(data = mpg,
           formula = cty ~ manufacturer)
summary(mod4)

performance(mod4)
performance(mod3)
performance(mod2)
performance(mod)

compare_performance(mod, mod2, mod3, mod4)
compare_models(mod, mod2, mod3, mod4)

compare_performance(mod, mod2, mod3, mod4, mod5) %>% plot()

mod5 = glm(data = mpg,
    formula = cty ~ displ * cyl)
summary(mod5)

displ + cyl + displ:cyl

####predict+save the cty based on your 3 models and in mpg####
mod = glm(data = mpg, formula = cty ~ displ)
mod2 = glm(data = mpg, formula = cty ~ displ + cyl + class)
mod3 = glm(data = mpg, formula = cty ~ displ * cyl * class)
mod4 = glm(data = mpg, formula = cty ~ trans * drv)

mpg$pred1 = predict(mod, mpg)
mpg$pred2 = predict(mod2, mpg)
mpg$pred3 = predict(mod3, mpg)
mpg$pred4 = predict(mod4, mpg)
View(mpg)

mpg %>% 
  ggplot(aes(x = displ, y = pred1, color = cyl, group = cyl))+
  geom_smooth(method = 'glm')

mpg %>% 
  ggplot(aes(x = displ, y = pred2, color = cyl, group = cyl))+
  geom_smooth(method = 'glm')

mpg %>% 
  ggplot(aes(x = displ, y = pred3, color = cyl, group = cyl))+
  geom_smooth(method = 'glm')

mpg %>% 
  ggplot(aes(x = displ, y = pred4, color = cyl, group = cyl))+
  geom_smooth(method = 'glm')

mpg %>% 
  pivot_longer(starts_with('pred'), names_to = 'prediction', values_to = 'mpg_in_city') %>% View()

mpg %>% 
  pivot_longer(starts_with('pred')) %>% 
  ggplot(aes(x = displ, y = cty, color = factor(cyl)))+
  geom_point()+
  geom_point(aes(y = value), color = 'black')+
  facet_wrap(~ name)

install.packages("MASS")
library(MASS)

model_all = glm(data = mpg, formula = cty ~ displ * cyl * trans * drv * manufacturer * model * year * )
step = stepAIC(mod_all)

mod_max = glm(data = mpg, formula = cty ~ .^2)
step_max = stepAIC(mod_max)

## Does the body mass vary significant between penguin species?

mod5 = glm(data = penguins,
           formula = body_mass ~ species)
summary(mod5)

dat_pen = penguins
dat_pen$species = relevel(dat_pen$species, ref = 'Gentoo')
mod6 = glm(dat = dat_pen,
           formula = body_mass ~ species)
summary(mod6)

dat_pen$species = factor(dat_pen$species, levels = c('Chinstrap', 'Gentoo', 'Adelie'))
mod7 = glm(dat = dat_pen,
           formula = body_mass ~ species)
summary(mod7)

mod_lm = lm(dat = dat_pen,
           formula = body_mass ~ species)
summary(mod_lm)

### Logistic Regression####
#statistical prediction of binary (yes/no) decisions
# outcome = binary

## build a model to predict whether a bird is Gentoo or not
# outcome = binary ( 0/1 ) ( T/F ) ( Y/N )
View(penguins)

mod = glm(dat = dat_pen,
          formula = is Gentoo or not (y/n) ~ predictors)

# 1.) outcome needs to be binary.

dat_pen = dat_pen %>% 
  mutate(gentoo = case_when(species == 'Gentoo' ~ TRUE,
                            TRUE ~ FALSE)) %>% 

str(dat_pen)
names(dat_pen)

mod = glm(dat = dat_pen,
    formula = 'Gentoo' ~ bill_length_mm + bill_length)

names(dat_pen)

dat_pen$pred = predict(mod, dat_pen, type = 'response')
View(dat_pen)

dat_pen %>% 
  ggplot(aes(x = body_mass, y = pred, color = species))+
  geom_point()

dat_pen = dat_pen %>% 
  mutate(outcom = case_when(pred > 0.75 ~ 'Gentoo',
                             pred < 0.25 ~ 'Not Gentoo',
                             True ~ 'Not sure')) %>%
  mutate(compare = case_when(species == 'Gentoo' & outcome == 'Gentoo' ~'Correct',
                             species != 'Gentoo' & outcome == 'Not Gentoo' ~'Correct',
                             TRUE ~ 'Not Correct')) %>%
  pluck('compare') %>% 
  sum()/ nrow(dat_pen)
  
        -OR-
  
table(dat_pen$species)
table(dat_pen$outcome)
table(dat_pen$compare)
accuracy = 292/(292+52)


##FINAL workspace####

df_elkwolf = read_xlsx("~/Desktop/School/Data_Analytics/Data_Course_SAPP/Data/df_elkwolf.xlsx")

df_elkwolf = read_xlsx("~/Desktop/School/Data_Analytics/Data_Course_SAPP/Data/df_elkwolf.xlsx",
              col_types = c("numeric", "numeric", "numeric")) %>%,
view(df_elkwolf)

dfew_pop = df_elkwolf %>% 
  pivot_longer(-Year) %>% 
  ggplot(aes(x = Year, y = value))+
  geom_line()+
  geom_point()+
  facet_wrap(~name, ncol = 1, scales = "free_y")+
  theme(axis.text.x = element_text(angle = 30, hjust = 1)
  )

view(dfew_pop)



df_ewpop = df_elkwolf %>% 
  ggplot(aes(x = Year,
             y = Elk_Pop,
             group = 1,
             color = 'brown')) +
  geom_line() +
  theme(axis.text.x = element_text(angle = 30, hjust = 1)
  )



df_elkwolf$Year=factor(df_elkwolf$Year)
df_elkwolf$Elk_Pop=factor(df_elkwolf$Elk_Pop)
df_elkwolf$Wolf_Pop=factor(df_elkwolf$Wolf_Pop)

df_elkwolf %>% 
  ggplot(aes(x = Year,
             y = Elk_Pop,
             group = 1,
             color = 'brown')) +
  geom_line() +
  theme(axis.text.x = element_text(angle = 30, hjust = 1)
  )

df_pop = df_elkwolf %>% 
  ggplot(aes(x = Year,
             y = Elk_Pop,
             group = 1,
             color = 'brown')) +
  geom_line() +
  theme(axis.text.x = element_text(angle = 30, hjust = 1)
  )

df_pop +
  geom_line(aes(y = Wolf_Pop), color = 'blue')