# URL: https://www.youtube.com/watch?v=LNpg8jgGex4
# Sourcing document - source('~/Loops in R.R')

# While loops

Fun <- function()
{
  v <- c(1,2,3)
  Counter <- 1
  
  while(Counter<10)
  {
    v <- v*2
    print(v)
    Counter <- Counter + 1
    print(Counter)
  }
}

# For loops

Fun_F <- function()
{
  v <- c(1,2,3)
  for(counter in 1:5)
  {
    v <- v*2
    print(v)
    print(counter)
  }
}