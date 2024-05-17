# Load necessary libraries
library(ggplot2)
library(datasets)

# Read the dataset
iris <- read.csv("C:\\Users\\snorf\\Desktop\\mis_habilidades\\sbd\\iris.csv")

# 1. Recounts of the variable "Species"
species_plot <- ggplot(iris, aes(x = Species)) +
  geom_bar(fill = "skyblue") +
  ggtitle("Count of Each Species") +
  xlab("Species") +
  ylab("Count")
print(species_plot)
# 2. Histogram of "Petal.Length"
histogram_plot <- ggplot(iris, aes(x = Petal.Length)) +
  geom_histogram(binwidth = 0.5, fill = "orange", color = "black") +
  ggtitle("Distribution of Petal Length") +
  xlab("Petal Length") +
  ylab("Frequency")

print(histogram_plot)
# 3. Scatter plot of "Petal.Length" vs "Petal.Width" with a smoothed conditional mean line
scatter_plot <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(aes(color = Species)) +
  geom_smooth(method = "loess") +
  ggtitle("Petal Length vs Petal Width") +
  xlab("Petal Length") +
  ylab("Petal Width")

print(scatter_plot)
# 4. Plot showing the relationship between "Sepal.Length", "Sepal.Width", and "Petal.Length"
relation_plot <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Petal.Length)) +
  geom_point() +
  scale_color_gradient(low = "blue", high = "red") +
  ggtitle("Relationship between Sepal Length, Sepal Width, and Petal Length") +
  xlab("Sepal Length") +
  ylab("Sepal Width")
print(relation_plot)
# Modify the scatter plot (step 3) and save it
modified_scatter_plot <- scatter_plot +
  ggtitle("Modified: Petal Length vs Petal Width") +
  xlab("Modified Petal Length") +
  ylab("Modified Petal Width") +
  theme_minimal()

print(modified_scatter_plot)
# Save the modified plot
ggsave("/mnt/data/modified_scatter_plot.png", plot = modified_scatter_plot)

# Display the plots




