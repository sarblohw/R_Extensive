pacman::p_load('tidyverse', 'nycflights13')

nycflights13::flights

flights <- nycflights13::flights
head(flights)

plot(
    x = flights$arr_delay, 
    y = flights$dep_delay,
    pch = 13,
    col = 'red',
    cex = 2,
    main = 'Scatter and random lines',
    xlab = 'arr delay',
    ylab = 'dep delay'
    )
abline(0, 1, col = 'gray')

sample.int(100, 10)

install.packages('IRkernel')
