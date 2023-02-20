# Chart 1
library(ggplot2)

students_in_math <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-AG-Group6/main/student-mat.csv", stringsAsFactors = FALSE)
  ggplot(data = students_in_math) +
  geom_boxplot(aes(x = freetime, y = Dalc + Walc, group = freetime)) +
  labs(
    title = "The relationship between student alcohol consumption and free time afterschool",
    x = "Free Time Afterschool",
    y = "The Amount Of Student Alcohol Consumption"
     )

  