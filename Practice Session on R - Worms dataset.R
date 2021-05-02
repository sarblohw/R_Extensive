# loading required libraries
library(tidyverse)
require(tidyverse) # load library and give a msg

# loading data set and attaching (can use variable names directly)
worms <- read.table('/home/ds/Downloads/worms.txt', header=TRUE)
attach(worms)

# exploring the dataset
View(worms)
head(worms)
tail(worms)
str(worms)
summary(worms)
names(worms)
colnames(worms)
rownames(worms)

# subscripts and indices
worms[3, 5]
worms[1:5, 1:4] # subset of worms
worms["Vegetation"]
worms[1:3, "Vegetation"] # returns vector
worms[1, 3:4] # returns data frame
worms[3,] # returns df
worms[,3] # returns vector
worms[,c(1,5)] # passing a vector to get multiple columns
worms[,c("Vegetation","Field.Name")]

sample(1:100, 35)
worms[sample(1:20,8),] #random 8 out of first 20 observations by index
worms[sample(1:20,8,replace=T),] # allow repeated index in random

# sorting
# sort (by values of a column) vs order (by index numbers)
# sort on a df will sort only the column, order will sort by that column, the whole df
worms[order(Vegetation),]
worms[rev(order(Vegetation)),]
worms[order(Vegetation, Field.Name),]
worms[order(Vegetation, Field.Name, -Worm.density),] # -ve sign with order can be used for numerical vars to rev the sorting order
worms[order(-rank(Vegetation), -Worm.density),] # using rank with -ve to reverse sorting on categorical variables/factors
worms[order(Vegetation), c(3,7,1,2)] # selecting columns with sort

# filtering
# logical operators for filtering
# && - sequential AND
worms[Damp==TRUE,]
worms[Worm.density>median(Worm.density) & Soil.pH<5.2,]

# apply, lapply, sapply
sapply(worms, is.character) # bool values returned when function applied over columns
worms[, sapply(worms, is.numeric)]
worms[, sapply(worms, is.factor)]
worms[, sapply(worms, is.character)]

# converting character var to factors
worms[, sapply(worms, is.character)] <- lapply(worms[, sapply(worms, is.character)], as.factor)

# converting field names back to character
worms[, "Field.Name"] <- lapply(worms[, "Field.Name"], as.character)
str(worms)

worms[-(6:15),] # ignoring rows 6 to 15

worms[!(Vegetation=='Grassland'),] # filter out Grassland from the vegetation col using NOT

# which function to filter
worms[which(Vegetation == 'Grassland'),]
worms[which(Damp==T),]
worms[-which(Damp==T),] # -ve sign will reverse filter

# new dataset imported... same table with missing values
# dealing with missing data
worms_m <- read.table('/home/ds/Downloads/worms.missing.txt', header=TRUE)
head(worms_m)

na.omit(worms_m)
na.exclude(worms_m)
complete.cases(worms_m) # retrns bool to see if na exists in rows
worms_m[complete.cases(worms_m),]

apply(worms_m, 2, is.na) # 2 stands for cols and 1 stands for rows, vertical/horizontal application of func
apply(apply(worms_m, 2, is.na), 2, sum) # isnull().sum() of python

new <- worms_m[rev(order(Worm.density)),]
new

duplicated(new$Vegetation) # returns bool per duplicacy
new[duplicated(new$Vegetation),] # duplicates
new[!duplicated(new$Vegetation),] # NOT duplicated/unique

grep("S", names(worms)) # returns index where column names have S
grep("S", names(worms), value=T) # returns value instead of index
worms[,grep("S", names(worms))]