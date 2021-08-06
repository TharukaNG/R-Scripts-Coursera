install.packages("tidyverse")
install.packages("ggplot2")

library(tidyverse)
library(ggplot2)
library(readr)

setwd("D:/03 Google Analytics- Coursera/C07/Exercises")

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)

ggplot(data = hotel_bookings,aes(x =lead_time,y=children)) + 
  geom_point()

#######################################

ggplot(data = hotel_bookings,aes(x=hotel,fill = market_segment)) +
  geom_bar()+
  facet_wrap(~market_segment)

#####################################

onlineta_city_hotels <- filter(hotel_bookings,
                               (hotel == "City Hotel" &
                                market_segment == "Online TA"  
                                  )
                               )

#### Using the pipe 

onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")

######################################

ggplot(data = onlineta_city_hotels,aes(x=lead_time,y=children))+
  geom_point()


ggplot(data = onlineta_city_hotels,aes(x=lead_time,y=children))+
  geom_jitter()
##################

View(onlineta_city_hotels_v2)

