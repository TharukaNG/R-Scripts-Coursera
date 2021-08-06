trimmed_df<-bookings_df %>% 
  select(hotel,is_canceled,lead_time) %>% 
  rename(hotel_type = hotel)

view(trimmed_df)

example_df <- bookings_df %>% 
  select(arrival_date_year,arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month","arrival_date_year"),sep = "--")

head(example_df)

head(bookings_df)

example_df <- bookings_df %>% 
  mutate(guests = sum(adults,children,babies) )

view(example_df)

example_df <- bookings_df %>% 
  filter(is_canceled == 1) %>% 
  summarise(average_lead_time = mean(lead_time))
  
View(example_df)

example_df1 <- bookings_df %>% 
  filter(is_canceled == 1) %>% 
  summarise(number_canceled = sum(is_canceled))

View(example_df1)