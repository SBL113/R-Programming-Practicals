# Explore
# Clean
# Manipulate
# Describe and summarise
# Visualise
# Analyse



#####Clean the Data#####

#what is clean Data?
# Variable type
# Select and Filter
# Find and deal with missing data
# Find and deal with duplicates
# Recording values


install.packages("tidyverse")
library(tidyverse)
data()
data(package = .packages(all.available = TRUE))
View(starwars)

# For Variable Type
glimpse(starwars)
class(starwars$gender)
unique(starwars$gender)

starwars$gender=as.factor(starwars$gender)
class(starwars$gender)

levels(starwars$gender)

starwars$gender=factor((starwars$gender),levels= c("masculine",feminine))

levels(starwars$gender)

# select variables

names(starwars)

starwars %>% select(name,height,ends_with("color")) %>% names()
  
# Filter observation

unique(starwars$hair_color)
starwars %>% select(name,height,ends_with("color")) %>% 
filter(hair_color %in% c("black","brown")& height <180)

#Missing Data

mean(starwars$height,na.rm=TRUE)
 
starwars %>% 
  select(name,gender,hair_color,height) %>% 
  na.omit()

starwars %>% 
  select(name,gender,hair_color,height) %>%
  filter(!complete.cases(.))

starwars %>% 
  select(name,gender,hair_color,height) %>%
  filter(!complete.cases(.)) %>% 
  drop_na(height)
  

starwars %>% 
  select(name,gender,hair_color,height) %>%
  #filter(!complete.cases(.)) %>% 
  drop_na(height) %>% 
  view()

starwars %>% 
  select(name,gender,hair_color,height) %>%
  #filter(!complete.cases(.)) %>% 
  mutate(hair_color=replace_na(hair_color,"none"))
#mutate(hair_color2=replace_na(hair_color,"none"))

# Duplicates
Names=c()