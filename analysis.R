data <- read.csv("Bone Tumor Dataset.csv")

contingency_table <- table(data$Status..NED..AWD..D., data$Grade)
chi_square_result <- chisq.test(contingency_table)
print(chi_square_result)
    