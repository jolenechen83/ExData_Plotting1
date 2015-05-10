hpc <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?")
head(hpc)
hpc$Date <- as.Date(hpc$Date, format = "%d/%m/%Y")

## Reading partial dataset based on date
hpc2 <- subset(hpc, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
##Remove the full hpc2set
rm(hpc)

## Converting dates
cdate <- paste(as.Date(hpc2$Date), hpc2$Time)
hpc2$cdate1 <- as.POSIXct(cdate)

##Plot 2
png(filename="plot2.png",width = 480, height = 480, units = "px")
plot(hpc2$Global_active_power ~ hpc2$cdate1, type = "l",xlab="",ylab = "Global Active Power (kilowatts)")
dev.off()