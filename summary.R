library(dplyr)
data_in_math <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-AG-Group6/main/student-mat.csv", stringsAsFactors = FALSE)

# A function that takes in a dataset and returns a list of info about it:
summary_info <- list()

# Table
# Grouped the data by sex then separately summarize the mean alcohol consumption level of workdays and weekends.
summary_info$workday <- data_in_math %>% 
  group_by(sex) %>% 
  summarize(mean_workday_drink = round(mean(Dalc), 2))

summary_info$weekend <- data_in_math %>% 
  group_by(sex) %>% 
  summarize(mean_weekend_drink = round(mean(Walc), 2))

# Chart 1: 
# Added a column of total weekly alcohol consumption
summary_info$amount_alcohol <- data_in_math %>% mutate(amount_alcohol = Dalc + Walc) %>% pull(amount_alcohol)

# Chart 2: 
# Grouped the data set by age then calculate the average of work day drinking levels
summary_info$alc_by_age <- data_in_math %>% group_by(age) %>% summarize(average = mean(Dalc))

# Chart 3: 
# Sort students with grades better than 60% (12/20)
summary_info$good_grades <- data_in_math %>% filter(data_in_math$G3 >= 12)

# Sort students with grades less than 60% (12/20)
summary_info$not_as_good <- data_in_math %>% filter(data_in_math$G3 < 12)

# Chose work day alcohol consumption because it is more significant
# Extract vector work day alcohol consumption used for building the histogram of two student groups separated by grades
summary_info$good_grades_consumption <- data_in_math %>% filter(data_in_math$G3 >= 12) %>% pull(Dalc)
summary_info$not_as_good_consumption <- data_in_math %>% filter(data_in_math$G3 < 12) %>% pull(Dalc)



