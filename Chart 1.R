# Chart 1
library(ggplot2)
library(dplyr)

students_in_math <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-AG-Group6/main/student-mat.csv", stringsAsFactors = FALSE)
new_students_in_math <- 
  students_in_math %>%
  mutate(amount_alcohol = Dalc + Walc)

ggplot(data = new_students_in_math) +
  geom_boxplot(aes(x = freetime, y = amount_alcohol, group = freetime)) +
  labs(
    title = "The relationship between student alcohol consumption and free time afterschool",
    x = "Free Time Afterschool",
    y = "The Amount Of Student Alcohol Consumption"
  )

  