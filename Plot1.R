# Exploratory Data Analysis
# Brandon
# PLot 1

# Read unzipped data from the current working directory.
data <- read.table('household_power_consumption.txt', 
                   sep = ';', header = TRUE, na.strings = '?')