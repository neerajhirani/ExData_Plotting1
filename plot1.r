# Assuming data is in the working directory, load the data-set
source("loaddata.R")

# Plot the histogram Frequency v/s Global Active Power (kilowatts) 
hist(newdata$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480, units = "px", 
         bg = "transparent")
dev.off()
