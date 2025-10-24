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
ggsave()
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