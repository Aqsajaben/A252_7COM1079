library(readr)
# Load the dataset
file_path <- "Bone_Tumor_Dataset.csv"
# Check for NA values and handle them
na_summary <- colSums(is.na(data))
# Count missing values per column
cat("Missing Values Summary:\n")
print(na_summary)
# Check for duplicate rows
duplicate_count <- sum(duplicated(data_cleaned))
cat("Number of duplicate rows:", duplicate_count, "\n")
# Save the cleaned dataset
write_csv(data_cleaned, "Bone_Tumor_Dataset_Cleaned.csv")