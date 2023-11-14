library(ggplot2)
library(dplyr)
library(datasets)
data("Titanic")
titanic_df <- as.data.frame(Titanic)
bar_plot_class <- titanic_df %>%
  group_by(Class, Survived) %>%
  summarise(Count = sum(Freq)) %>%
  ggplot(aes(x = Class, y = Count, fill = factor(Survived))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Survival on Titanic by Passenger Class",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived") +
  theme_minimal()
bar_plot_gender <- titanic_df %>%
  group_by(Sex, Survived) %>%
  summarise(Count = sum(Freq)) %>%
  ggplot(aes(x = Sex, y = Count, fill = factor(Survived))) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Survival on Titanic by Gender",
       x = "Gender",
       y = "Count",
       fill = "Survived") +
  theme_minimal()
histogram_age <- ggplot(titanic_df, aes(x = Age)) +
  geom_histogram(binwidth = 5, position = "identity", alpha = 0.7, fill = "dodgerblue", color = "black") +
  labs(title = "Distribution of Age on Titanic",
       x = "Age",
       y = "Count",
       fill = "Survived") +
  scale_fill_discrete(labels = c("Not Survived", "Survived")) +
  theme_minimal()
print(bar_plot_class)
print(bar_plot_gender)
print(histogram_age)