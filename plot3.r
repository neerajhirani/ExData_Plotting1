# Load the data
source("loaddata.R")

png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

# Plot the line graph Energy Sub Metering v/s Days
plot(newdata$Sub_metering_1~newdata$datetime, 
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(newdata$datetime, newdata$Sub_metering_2, col="red")
lines(newdata$datetime, newdata$Sub_metering_3, col="blue")

# Add a legend
legend("topright", lwd=1, col=c("black","red","blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()