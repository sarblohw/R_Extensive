pacman::p_load('tidyverse', 'nycflights13')

flights_tibb <- nycflights13::flights

plot(flights_tibb$arr_delay, flights_tibb$dep_delay)

subset(flights_tibb, subset = carrier == 'UA', select = c('arr_delay', 'dep_delay'))

flights_tibb[flights_tibb$carrier == 'UA', c('dep_delay')]

flights_tibb$dep_delay[flights_tibb$carrier == 'UA']

flights_tibb[1:3]

flights_tibb[-(1:3)]

pairs(~ flights_tibb$arr_delay + flights_tibb$dep_delay)

attach(flights)

pairs(~arr_delay+dep_delay)

pairs(~ arr_delay + dep_delay + distance + air_time)

