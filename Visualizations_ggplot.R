install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

#plot
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

#or
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()

## Description##

ggplot(data = penguins) # ggplot() function creates a coordinate system that adds layers to.
# The first argument of the ggplot() function is the dataset to use in the plot. 

+
  # add a “+” symbol to add a new layer to the plot
  
  geom_point # geom_point() function uses points to create scatterplots | geom_bar function uses bars to create bar charts

(mapping = aes(x = flipper_length_mm,y = body_mass_g)) # defines how variables in the dataset are mapped to visual properties.
# The mapping argument is always paired with the aes() function. 
# The x and y arguments of the aes() function specify which variables to map to the x-axis and the y-axis of the coordinate system. 


##########################

install.packages("tidyverse")

library(tidyverse)

ggplot(data = penguins)

ggplot(data=penguins) + geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm,y = bill_depth_mm))

?geom_point


###########################

setwd("D:/03 Google Analytics- Coursera/C07/Exercises")

hotel_bookings <- read_csv("hotel_bookings.csv")

head(hotel_bookings)

ggplot(data = hotel_bookings)+
  geom_point(mapping = aes(x =lead_time, y = children))

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x=stays_in_weekend_nights,y=children))

##############################

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species,shape=species,size=species))

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,alpha=species))


ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,shape=species),color="purple")


#############################

ggplot(data = penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g))


ggplot(data = penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g))


ggplot(data = penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g,linetype = species))


ggplot(data = penguins) +
  geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g,linetype = species))


ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut,color = cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut,fill=cut))


ggplot(data = diamonds)+
  geom_bar(mapping = aes(x=cut,fill=clarity))

################################

ggplot(data = penguins,aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(aes(color = species))+
  facet_wrap(~species)

ggplot(data = diamonds) +
  geom_bar(mapping = aes(x=color,fill=cut))+
  facet_wrap(~cut)

colnames(penguins)

ggplot(data = penguins,aes(x=flipper_length_mm,y=body_mass_g))+
  geom_point(aes(color=species))+
  facet_grid(sex~species)


##################################

setwd("D:/03 Google Analytics- Coursera/C07/Exercises")

install.packages("tidyverse")
library(tidyverse)

hotel_bookings<-read_csv("hotel_bookings.csv")

View(hotel_bookings)

ggplot(data = hotel_bookings,aes(x=distribution_channel))+
  geom_bar()

ggplot(data = hotel_bookings,aes(x=distribution_channel))+
  geom_bar(aes(fill=deposit_type))

ggplot(data = hotel_bookings,aes(x=distribution_channel))+
  geom_bar(aes(fill=market_segment))

ggplot(data = hotel_bookings,aes(x=distribution_channel))+
  geom_bar(aes(fill=market_segment))+
  facet_wrap(~deposit_type)

ggplot(data = hotel_bookings,aes(x=distribution_channel))+
  geom_bar(aes(fill=market_segment))+
  facet_grid(~deposit_type)

ggplot(data = hotel_bookings,aes(x=distribution_channel))+
  geom_bar(aes(fill=market_segment))+
  facet_grid(deposit_type~market_segment)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

