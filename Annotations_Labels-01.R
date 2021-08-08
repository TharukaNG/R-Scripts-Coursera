install.packages("readr")
install.packages("tidyverse")
install.packages("ggplot")


library(readr)
library(tidyverse)
library(ggplot2)

View(hotel_bookings)

hotel_bookings <- read.csv("hotel_bookings.csv")

colnames(hotel_bookings)

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=market_segment)) +
  facet_wrap(~hotel)+
  labs(title = "Payment Type by Hotel Type")

mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=market_segment)) +
  facet_wrap(~hotel)+
  labs(title = "Payment Type by Hotel Type",
       subtitle = paste0("Data from: ",mindate, " to ",maxdate)
       )

##################


ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x=market_segment,fill=hotel)) +
  facet_wrap(~hotel)+
  labs(title = "Payment Type by Hotel",
       caption = paste0("Data from: ",mindate, " to ",maxdate),
       x ="Market Segments", y = "Number of Bookings"
  )

################
ggsave("Payment Type by Hotel.png")


