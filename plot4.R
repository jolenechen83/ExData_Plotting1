hpc <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?")
head(hpc)
hpc$Date <- as.Date(hpc$Date, format = "%d/%m/%Y")

## Reading partial dataset based on date
hpc2 <- subset(hpc, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
##Remove the full hpc dataset
rm(hpc)

## Converting dates
cdate <- paste(as.Date(hpc2$Date), hpc2$Time)
hpc2$cdate1 <- as.POSIXct(cdate)

##Plot 4
png(filename="plot4.png",width = 480, height = 480, units = "px")
par(mfrow = c(2,2))
with(hpc2, {
    plot(Global_active_power ~ cdate1, type = "l",xlab="", ylab = "Global Active Power")
    plot(Voltage ~ cdate1, type = "l", xlab = "datetime",ylab = "Voltage")
    plot(Sub_metering_1 ~ cdate1, type = "l", xlab="", ylab = "Energy sub metering")
    lines(Sub_metering_2 ~ cdate1, col = 'Red')
    lines(Sub_metering_3 ~ cdate1, col = 'Blue')
    legend("topright", col = c("black", "red", "blue"), lwd = 2, lty = 1, 
           bty = "n",legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Global_reactive_power ~ cdate1, type = "l", xlab = "datetime",ylab = "Global_reactive_power")
})
dev.off()