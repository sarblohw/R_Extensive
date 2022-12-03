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

rowSums(df)
colSums(df)
names(df)
summary(df)

mean(rowSums(df))
