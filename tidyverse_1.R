#https://www.youtube.com/watch?v=UUGHyyq_Y6s

pacman::p_load('tidyverse')

#manually create tibble row by row
x <- tribble(
  ~x, ~y, ~z,
  1, 4, 2,
  3, 2, 7,
  6, 2, 6
)

#cast tibble to df
df <- data.frame(x)

#some operations
rowSums(df)
colSums(df)
names(df)
summary(df)
str(df)
dim(df)
length(df)
mean(df$x, na.rm = T)
mean(colSums(df))

#using pipe for the same operation
mean(rowSums(df))

df %>% 
  rowSums() %>% 
  mean()

avengers <- read.csv('Downloads/avengers.csv')

avengers %>% head()
avengers %>% names()










