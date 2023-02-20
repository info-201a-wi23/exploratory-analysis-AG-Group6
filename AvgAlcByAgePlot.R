math_df <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-AG-Group6/main/student-mat.csv", stringsAsFactors = FALSE)

## Average alcohol consumption for students based on their age

alc_by_age <- math_df %>% group_by(age) %>% summarize(average = mean(Dalc))

Age <- ggplot(alc_by_age) +
  geom_point(mapping = aes(x = age, y = average)) +
  labs(title = "Avg Alcohol Consumption Per Age", x = "Student Age", y = "Avg. Reported Consumption") +
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

