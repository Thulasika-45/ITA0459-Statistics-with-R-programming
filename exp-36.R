data("ChickWeight")
ChickWeight$Diet <- as.factor(ChickWeight$Diet)
library(ggplot2)
boxplot_plot_a <- ggplot(ChickWeight, aes(x = Diet, y = weight, fill = Diet)) +
  geom_boxplot() +
  labs(title = "Box Plot of Weight Grouped by Diet", x = "Diet", y = "Weight")
histogram_plot_b <- ggplot(ChickWeight[ChickWeight$Diet == 1, ], aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "blue", color = "black") +
  labs(title = "Histogram of Weight in Diet-1", x = "Weight", y = "Frequency")
scatter_plot_c <- ggplot(ChickWeight, aes(x = Time, y = weight, color = Diet)) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time Grouped by Diet", x = "Time", y = "Weight")
print(boxplot_plot_a)
print(histogram_plot_b)
print(scatter_plot_c)