# Sample data for contingency table
data <- matrix(c(10, 20, 15, 5), nrow = 2, byrow = TRUE) 
rownames(data) <- c("Row1", "Row2")
colnames(data) <- c("Col1", "Col2")
contingency_table <- as.table(data)

# Print the contingency table
print("Contingency Table:")
print(contingency_table)

# Check expected frequencies
chi_test <- chisq.test(contingency_table)
expected_frequencies <- chi_test$expected

# Print expected frequencies
print("Expected Frequencies:")
print(expected_frequencies)

# Check if all expected frequencies are >= 5
if (all(expected_frequencies >= 5)) {
  print("All expected frequencies are 5 or more. Proceeding with the Chi-square test.")
} else {
  print("Some expected frequencies are less than 5. Consider an alternative test (e.g., Fisher's Exact Test).")
}

# Perform Chi-square test
chi_square_result <- chisq.test(contingency_table)
print("Chi-square Test Results:")
print(chi_square_result)
# Sample data for contingency table
data <- matrix(c(10, 20, 15, 5), nrow = 2, byrow = TRUE) 
rownames(data) <- c("Row1", "Row2")
colnames(data) <- c("Col1", "Col2")
contingency_table <- as.table(data)

# Print the contingency table
print("Contingency Table:")
print(contingency_table)

# Check expected frequencies
chi_test <- chisq.test(contingency_table)
expected_frequencies <- chi_test$expected

# Print expected frequencies
print("Expected Frequencies:")
print(expected_frequencies)

# Check if all expected frequencies are >= 5
if (all(expected_frequencies >= 5)) {
  print("All expected frequencies are 5 or more. Proceeding with the Chi-square test.")
} else {
  print("Some expected frequencies are less than 5. Consider an alternative test (e.g., Fisher's Exact Test).")
}

# Perform Chi-square test
chi_square_result <- chisq.test(contingency_table)
print("Chi-square Test Results:")
print(chi_square_result)

