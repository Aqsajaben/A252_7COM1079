
install.packages("ggplot2")
# Load necessary library
library(ggplot2)

# Step 1: Read the data
data <- read.csv("Bone Tumor Dataset.csv")

# Step 2: Create a contingency table
contingency_table <- table(data$Grade, data$Status..NED..AWD..D.)

# Step 3: Normalize the data
# Convert counts to proportions
normalized_data <- prop.table(contingency_table, margin = 1) * 100  # Percentages

# Convert to a long format for ggplot2
normalized_data_long <- as.data.frame(as.table(normalized_data))
colnames(normalized_data_long) <- c("Grade", "Status..NED..AWD..D.", "Percentage")

# Step 4: Create the plot
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
