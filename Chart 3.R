library(ggplot2)
library(dplyr)

# Read the file
data_in_math <- read.csv("https://raw.githubusercontent.com/info-201a-wi23/exploratory-analysis-AG-Group6/main/student-mat.csv", stringsAsFactors = FALSE)

# Sort students with grades better than 60% (12/20)
good_grades <- data_in_math %>% filter(data_in_math$G3 >= 12)

# Sort students with grades less than 60% (12/20)
not_as_good <- data_in_math %>% filter(data_in_math$G3 < 12)
  
# Chose work day alcohol consumption because it is more significant
# Extract vector work day alcohol consumption
good_grades_consumption <- good_grades$Dalc

not_as_good_consumption <- not_as_good$Dalc

# Put into dataframe for ggplot
data1 <- data.frame(
  var1 = good_grades_consumption
)

data2 <- data.frame(
  var2 = not_as_good_consumption
)

# Graph of good_grades_consumption
graph <- ggplot(data1, aes(x = var1)) + 
  geom_histogram(binwidth = 1, fill = "blue", alpha = 0.5) +
  labs(title = "Histogram", x = "Workday alcohol consumption", y = "Amount count")

# Combine graphs
graph <- graph + geom_histogram(data = data2, aes(x = var2), 
                        binwidth = 1, fill = "yellow", alpha = 0.5) +
  labs(title = "Histogram", x = "Workday alcohol consumption", y = "Amount count")

# Display the histograms
graph <- graph + facet_wrap(~1, ncol = 2)
graph