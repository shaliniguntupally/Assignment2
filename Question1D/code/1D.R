# Load the necessary library for data manipulation
library(dplyr)

# Calculate the current year
current_year <- as.numeric(format(Sys.Date(), "%Y"))

# Add a new column for the car's age
data <- mutate(data, Car_Age = current_year - Year)

# Check the modified dataset with the new "Car_Age" column
head(data)

