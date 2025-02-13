install.packages("tidyverse")

library(tidyverse)

??tidyverse
tidyverse_packages(include_self = TRUE)


# Data Frame

data(airquality)

View(airquality)
head(airquality)

?airquality


ggplot(data=airquality, aes(x=Ozone))+geom_histogram()

#convert wide Data (airquality) to long data format

?pivot_longer


airquality_long = pivot_longer(
  data=airquality,
  cols=everything(),
  #cols=c(Ozone,Solar.R,Wind,Temp),
  names_to = "name",
  values_to= "value"
)

head(airquality_long) 

ggplot(data=airquality_long, aes(x=name, y=value))+geom_col()


airquality_long = pivot_longer(
  data=airquality,
  #cols=everthing(),
  cols=c(Ozone,Solar.R,Wind,Temp),
  names_to = "env_factors",
  values_to= "measurement"
)

head(airquality_long)
ggplot(data=airquality_long, aes(x=env_factors, y=measurement))+geom_col()



#convert long Data (airquality) to wide data format

?pivot_wider


airquality_wide <-pivot_wider(
  data=airquality_long,
   names_from = env_factors,
  values_from= measurement
)

head(airquality_wide)
