# load Packages
library(tidyverse)
data()
??tidyverse

#View Data
?msleep
#?glimpse
glimpse(msleep)
View(msleep)

# Rename a variable
msleep  %>%
  rename("conseve" = "conservation") %>% 
glimpse()

# Reorder variables
msleep %>% 
  select(vore,name,everything()) #   select(vore,name,order,everything()), while ordering data type should be same.

# change a variable type
class(msleep$vore)
glimpse(msleep)
unique(msleep$vore)

msleep$vore = as.factor(msleep$vore)
glimpse(msleep)
 ###### OR #######
msleep %>% 
  mutate(vore=as.character(vore)) %>% 
  glimpse()

# Select variables to work with 
names(msleep)

msleep %>% 
  select(2:4,
         awake,
         starts_with('sleep'),
         contains("wt")) %>% 
  names()

# Filter and arrange data
unique(msleep$order)

msleep %>% 
  filter((order=="Carnivore"|order=="Primates")& sleep_total > 8) %>% 
  select(name,order,sleep_total)%>%  
  arrange(-sleep_total) 
  View
  
  ###### OR #######
  
  msleep %>% 
    filter(order %in% c("Carnivore","Primates") & sleep_total > 8)%>% 
    select(name,order,sleep_total)%>%  
    arrange(order) %>% 
  View
  
  # Change Data(mutate)
  
  names(msleep)
  
  msleep %>% 
    mutate(brainwt = brainwt*1000) %>% ## change brainwt with new one
    View
  
  msleep %>% 
    mutate(brainwt_in_grams = brainwt*1000) %>% ##keeptwo columns seperate- brainwt_in_grams and brainwt
    View
  
  # Conditions changes (if-else)
  ##logical vector based on a condition
  
  msleep$brainwt
  msleep$brainwt > 0.01
  
  size_of_brain = msleep %>% 
    select(name, brainwt) %>% 
    drop_na(brainwt) %>% 
    mutate(brain_size=if_else(brainwt>0.01))
  