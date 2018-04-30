# Exploratory Data Analysis
# Brandon
# PLot 1

# Read unzipped data from the current working directory.
data <- read.table('household_power_consumption.txt',
                   sep = ';', header = TRUE, na.strings = '?')

# Create a POSIXlt date-time variable for each row.
data <- within(data, datetime <- strptime(paste(Date, Time),
                                          format = "%d/%m/%Y%H:%M:%S"))

# Subset the dates of interest.
plotdata <- subset(data, datetime >= '2007-02-01' & datetime <= '2007-02-03')

# Make hist of the plotdata.
hist(plotdata$Global_active_power, 
     col = 'red', 
     main = 'Global Active Power', 
     xlab = 'Global Active Power (Kilowatts)') 

# Copy to a png file.
dev.copy(png, file = 'Plot1.png', width = 480, height = 480, units = 'px')
dev.off()