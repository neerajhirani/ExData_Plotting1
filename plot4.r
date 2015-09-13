# Load the data
source("loaddata.R")

png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

par(mfrow=c(2,2))

# Plot Global Active Power (kilowatts) v/s Days
plot(newdata$Global_active_power~newdata$datetime, 
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

# Plot Voltage v/s datetime
plot(newdata$Voltage~newdata$datetime, 
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# Plot Energy Sub Metering v/s datetime
plot(newdata$Sub_metering_1~newdata$datetime, 
     type = "l",
     xlab = "",
     ylab = "Energy sub metering")
lines(newdata$datetime, newdata$Sub_metering_2, col="red")
lines(newdata$datetime, newdata$Sub_metering_3, col="blue")
# Add legend
legend("topright", bty = "n", lwd=1, col=c("black","red","blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# Plot Global Reactive Power v/s datetime
plot(newdata$Global_reactive_power~newdata$datetime, 
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()