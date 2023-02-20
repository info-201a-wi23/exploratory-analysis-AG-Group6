library(tidyverse)

math_alcohol <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-AG-Group6/main/student-mat.csv", stringsAsFactors = FALSE)

workday <- math_alcohol %>% 
  group_by(sex) %>% 
  summarize(mean_workday_drink = round(mean(Dalc), 2))

weekend <- math_alcohol %>% 
  group_by(sex) %>% 
  summarize(mean_weekend_drink = round(mean(Walc), 2))

highest_mean_drinking <- left_join(workday, weekend)

view(highest_mean_drinking)
