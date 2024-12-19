# Umair
library(ggplot2)

# Plotting the proportions
ggplot(normalized_data_long, aes(x = Grade, y = Percentage, fill = Status..NED..AWD..D.)) +
  geom_bar(stat = "identity", position = "stack") +
  scale_y_continuous(labels = scales::percent_format(scale = 1)) +  # Convert to percent format
  labs(
    title = "Proportion of Status within Grade Levels",
    x = "Grade",
    y = "Percentage (%)",
    fill = "Status..NED..AWD..D."
  ) +
  theme_minimal() +
  theme(
    axis.text = element_text(size = 12),
    axis.title = element_text(size = 14, face = "bold"),
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5)
  )

