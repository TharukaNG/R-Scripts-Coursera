install.packages("tidyverse")
install.packages("ggplot2")

library(tidyverse)
library(ggplot2)
library(palmerpenguins)

View(penguins)

ggplot(data = penguins,aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(aes(color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length",
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr. Kristen Gorman"
         ) +
  annotate("text",x=220,y=3500,label = "The Gentoos are the largest",
           color = "purple",fontface = "bold",size = 4.5,angle = 25)
  
##using variables to store chart properties

penguins_plot <- ggplot(data = penguins,aes(x = flipper_length_mm,y = body_mass_g))+
  geom_point(aes(color = species)) +
  labs(title = "Palmer Penguins: Body Mass vs. Flipper Length",
       subtitle = "Sample of Three Penguins Species",
       caption = "Data collected by Dr. Kristen Gorman")

penguins_plot+
  annotate("text",x=220,y=3500,label = "The Gentoos are the largest",
           color = "Black",fontface = "bold")

#############Saving a plot

ggsave("Three Penguin Species.png")


## saving as png without ggsave()

png(file = "example_1.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "purple")
dev.off() # print the plot and then close the device using


## saving as pdf without ggsave()

pdf(file = "D:/03 Google Analytics- Coursera/C07/Exercises/example_2.pdf",    
    width = 4,     
    height = 4) 
plot(x = 1:10,     
     y = 1:10)
abline(v = 0)
text(x = 8, y = 5, labels = "Random text")
dev.off()



