# Load the data
source("loaddata.R")

png(filename = "plot2.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

# Plot the line graph Global Active Power (kilowatts) v/s Days
plot(newdata$Global_active_power~newdata$datetime, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()