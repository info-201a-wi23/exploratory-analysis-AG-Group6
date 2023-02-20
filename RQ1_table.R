library(tidyverse)
library(ggplot2)

math_alcohol <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-AG-Group6/main/student-mat.csv", stringsAsFactors = FALSE)

workday <- math_alcohol %>% 
  group_by(sex) %>% 
  summarize(mean_workday_drink = round(mean(Dalc), 2))

weekend <- math_alcohol %>% 
  group_by(sex) %>% 
  summarize(mean_weekend_drink = round(mean(Walc), 2))

highest_mean_drinking <- left_join(workday, weekend)

view(student_pass)

student_pass <- math_alcohol %>% 
  group_by(G3) %>% 
  summarize(drinking_level = round(mean(Dalc), 2))
  

ggplot(data = student_pass, aes(x = drinking_level)) +
  geom_histogram(bins = 10, colour = 1, fill = "white") + 
  xlab("Drinking Level in Workday")