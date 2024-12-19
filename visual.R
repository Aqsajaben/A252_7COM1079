# Load ggplot2 library
library(ggplot2)

# Sample data: Replace with actual data
data <- data.frame(
  Grade = c("A", "A", "B", "B", "C", "C"),
  Status = c("Pass", "Fail", "Pass", "Fail", "Pass", "Fail"),
  Count = c(30, 10, 20, 15, 25, 5)
)

# Calculate proportions
data <- data %>%
  group_by(Grade) %>%
  mutate(Proportion = Count / sum(Count))

# Create the plot
plot <- ggplot(data, aes(x = Grade, y = Proportion, fill = Status)) +
  geom_bar(stat = "identity", position = "fill") +
  scale_y_continuous(labels = scales::percent) +
  labs(
    title = "Proportions by Grade and Status",
    x = "Grade",
    y = "Proportion",
    fill = "Status"
  ) +
  theme_minimal()

# Print the plot
print(plot)

