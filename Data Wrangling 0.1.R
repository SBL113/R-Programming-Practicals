library(tidyverse)
data()
?starwars # it will show all discription about file if exsits
dim(starwars)
str(starwars) #show the structure of data set
glimpse(starwars) # work only in tidyverse package
view(starwars)
head(starwars)# shows first six rows of given data
tail(starwars)# shows last six rows of given data

starwars$name
attach(starwars)
names(starwars)
length(starwars)
class(hair_color)
class(height)
length(hair_color)
length(species)
unique(hair_color)

View(sort(table(hair_color),decreasing=TRUE))
barplot(sort(table(hair_color),decreasing=TRUE))

 starwars %>% #piped operator
   select(hair_color) %>% 
   count(hair_color) %>% 
   arrange(desc(n)) %>% 
   View()

 # about missing value
 starwars[83,5]
 
 View(starwars[is.na(hair_color),])
 
 class(height)
 length(height)
 summary(height)
 boxplot(height)
hist(height) 
barplot(height)

