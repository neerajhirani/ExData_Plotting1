# Get the data (assumes datafile is placed in the working directory)
filename <- "household_power_consumption.txt"
data <- read.table(filename, header = TRUE, sep = ";", 
                   colClasses = c("character", "character", 
                                  rep("numeric",7), na="?"))

# Filter the data to select the rows of interest: Dates 1/2/2007 & 2/2/2007
library(dplyr)
newdata <- filter(data, Date=="1/2/2007" | Date == "2/2/2007")

# Convert the times
datetime <- paste(as.Date(newdata$Date), newdata$Time)
newdata$datetime <- as.POSIXct(datetime)
