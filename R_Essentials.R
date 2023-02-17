###
#BASICS
###

#packages
install.packages('pacman')
library('dplyr')
require('dplyr')
pacman::p_load(dplyr, ggplot2)

#data types
class(1)
class(2L)
class('Waherguru')
class(TRUE)
typeof(1)
typeof(1L)

#variable assignment
x <- 5
x

#vector
x <- c(1,2,3,4,5)
x

#sequences
1:10
10:1
seq(10)
seq(30, 0, by=-3)

#save and print
(y <- c(4,2,5))
(x <- c(3,1,3))

#aritmetic operations
x+y
x*y
x^2
sqrt(x)
log(100)
log10(100)

#clear env
rm(list = ls())

#clear console
#ctrl+L
cat("\014")

###
#Data Types and Structures
###

#numeric
n1 <- 15
typeof(n1)

n2 <- 1.3
typeof(n2)

#character
c1 <- 'c'
typeof(c1)

c2 <- "i love R"
typeof(c2)

#logical
l1 <- TRUE
typeof(l1)

l2 <- F
l2
typeof(l2)

#vectors
v1 <- c(1,4,5,2,4)
is.vector(v1)
is.atomic(v1)

#matrix
(m1 <- matrix(1:9, nrow = 3, byrow = T))
typeof(m1)

#array








