# Perform Chi-square test
chi_square_result <- chisq.test(contingency_table)

# Extract results
chi_square_statistic <- chi_square_result$statistic
degrees_of_freedom <- chi_square_result$parameter
p_value <- chi_square_result$p.value

# Print results with interpretation
print("Statistical Interpretation:")
if (p_value < 0.05) {
  print(paste("The Chi-square statistic is", round(chi_square_statistic, 2), 
              "with", degrees_of_freedom, "degrees of freedom, and a p-value of", round(p_value, 4), 
              ". Since the p-value is less than 0.05, we reject the null hypothesis."))
  print("There is a statistically significant association between the variables.")
} else {
  print(paste("The Chi-square statistic is", round(chi_square_statistic, 2), 
              "with", degrees_of_freedom, "degrees of freedom, and a p-value of", round(p_value, 4), 
              ". Since the p-value is greater than 0.05, we fail to reject the null hypothesis."))
  print("There is no statistically significant association between the variables.")
}

