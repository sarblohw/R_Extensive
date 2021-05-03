library(dplyr)
library(tibble)
library(tidyverse)

data("diamonds")

#looking at the data
head(diamonds)
str(diamonds)
names(diamonds)
summary(diamonds)
View(diamonds)

#pipe method to manipulate data
avg_price_carats <- diamonds %>% 
  group_by(carat) %>% 
  summarise(avg_price = mean(price, na.rm = T))
avg_price_carats

tib_diam <- as_tibble(diamonds)

##Chapter: working with dataframes

#some dplyr functions
glimpse(diamonds)
mutate(diamonds, carat_perc=carat*100)

#converting to tibble
as_tibble(diamonds)

#importing new data and playing around
data(mtcars)
mtcars
names(mtcars)
View(mtcars)
rownames(mtcars)

#moving index to fiest column
mtcars <- cbind(Name <- rownames(mtcars), mtcars)
rownames(mtcars) <- c(1:nrow(mtcars))
mtcars

#readr
library(readr)
read_csv(readr_example("mtcars.csv"))

#readxl
library(readxl)
read_excel(readxl_example("type-me.xlsx"))
excel_sheets(readxl_example("type-me.xlsx")) #sheets in the workbook
d <- read_excel(readxl_example("type-me.xlsx"), sheet="numeric_coercion") 

#here, skimr, janitor
install.packages("here")
library(here)
install.packages("skimr")
install.packages("janitor")
library(skimr)
library(janitor)

install.packages('palmerpenguins')
library(palmerpenguins)

data("penguins")
penguins

skim_without_charts(penguins)
glimpse(penguins)

penguins %>% select(species) #select specific column
penguins %>% select(-species) #leave out column
penguins %>% select(!species)
names(penguins)
penguins %>% select(species, island) #select multiple columns
penguins %>% rename(island_new=island) #rename column
penguins %>% rename_with(toupper) #rename with function
rename_with(penguins, tolower)
clean_names(penguins) #cleans and leaves only char, int and special char

#assignment operators
x<-2
x<<-7
x=9
21 -> x
32 ->> x

# &, |, && - logical operators
# && - sequential and

##Chapter: Organize your data

penguins

penguins %>% arrange(bill_length_mm)

penguins %>% 
  arrange(-bill_length_mm)

penguins %>% 
  group_by(island) %>% 
  summarise(mean_bill <- mean(bill_length_mm, na.rm=T))

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(mean_bill <- mean(bill_length_mm)) #will drop rows with na

penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_bill <- max(bill_length_mm))

penguins %>% group_by(island, species) %>% drop_na() %>% summarise(max_bl <- max(bill_length_mm), mean_bl <- mean(bill_length_mm))

penguins %>% filter(species=="Adelie")

##Chapter: Transforming Data

#follow along data
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman","Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry","Claudia Garcia")
job_title <- c("Professional", "Programmer","Management", "Clerical",  "Developer", "Programmer", "Management", "Clerical", "Developer","Programmer")

#create dataframe
employee <- data.frame(id, name, job_title)

View(employee)
typeof(employee)

#converting to tibble
employee <- as_tibble(employee)

#split, concat
employee <- employee %>% separate(name, into = c("first_name","last_name"), sep=' ') #split
employee <- employee %>% unite("name", c(first_name, last_name), sep=" ") #concat

#creating new calc column
penguins
mutate(penguins, peng_w_kg <- penguins$body_mass_g/1000, flipper_l_m=penguins$flipper_length_mm/1000)

#tidyr
#pivot_longer, pivot_wider

######***** IMP https://rladiessydney.org/courses/ryouwithme/01-basicbasics-1/

install.packages('Tmisc')
library(Tmisc)
data("quartet")
View(quartet)

quartet %>% group_by(set) %>% summarise(mean(x),sd(x),mean(y),sd(y),cor(x,y))

install.packages("datasauRus")
library(datasauRus)





