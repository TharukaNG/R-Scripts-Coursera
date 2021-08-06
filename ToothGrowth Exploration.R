data("ToothGrowth")
View(ToothGrowth)

filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)

arrange(filtered_tg,len)

arrange(filter(ToothGrowth,dose ==0.5),len)

# usage of pipe
#Ex 01
filtered_toothgrowth_1 <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  arrange(len)

View(filtered_toothgrowth_1)

#Ex 02
filtered_toothgrowth_2 <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len,na.rm = T),.group="drop")

View(filtered_toothgrowth_2)
