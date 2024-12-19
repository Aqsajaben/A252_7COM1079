# Load required libraries
library(ggplot2)
library(dplyr)
library(scales)  # For percentage formatting

# Sample data: Replace with your actual data
data <- data.frame(
  Grade = c("A", "A", "B", "B", "C", "C"),
  Status = c("Pass", "Fail", "Pass", "Fail", "Pass", "Fail"),
  Count = c(30, 10, 20, 15, 25, 5)
)

# Calculate proportions within each Grade
data <- data %>%
  group_by(Grade) %>%
  mutate(Proportion = Count / sum(Count))

# Refined visualization
plot <- ggplot(data, aes(x = Grade, y = Proportion, fill = Status)) +
  geom_bar(stat = "identity", position = "fill", color = "black") +  # Add borders for clarity
  scale_y_continuous(labels = percent_format()) +  # Use percentage format for y-axis
  labs(
    title = "Proportions by Grade and Status",
    x = "Grade",
    y = "Proportion (as %)",
    fill = "Status"
  ) +
  theme_minimal(base_size = 14) +  # Adjust base font size for readability
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),  # Center and bold title
    axis.text.x = element_text(angle = 45, hjust = 1),  # Tilt x-axis labels for better readability
    legend.position = "top",  # Place legend at the top for better presentation
    panel.grid.major = element_line(color = "grey80")  # Enhance grid visibility
  )

# Print the plot
print(plot)
