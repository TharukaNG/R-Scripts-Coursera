view(bookings_df)

colnames(bookings_df)
head(bookings_df)
glimpse(bookings_df)

arrange(bookings_df,lead_time)
arrange(bookings_df,desc(lead_time))

hotel_bookings_v2<- arrange(bookings_df,desc(lead_time))

head(hotel_bookings_v2)

max(bookings_df$lead_time)
min(bookings_df$lead_time)

min(lead_time)

mean(bookings_df$lead_time)
mean(hotel_bookings_v2$lead_time)


hotel_bookings_city <- filter(bookings_df,hotel == "City Hotel")
head(hotel_bookings_city)

mean(hotel_bookings_city$lead_time)


hotel_summary <- 
  hotel_bookings_v2 %>% 
  group_by(hotel) %>% 
  summarise(average_lead_time <- mean(lead_time),
            min_lead_time<- min(lead_time),
            max_lead_time<-max(lead_time))
head(hotel_summary)

min()

