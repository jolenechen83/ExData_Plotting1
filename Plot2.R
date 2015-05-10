##Plot 2
png(filename="plot2.png",width = 480, height = 480, units = "px")
plot(hpc2$Global_active_power ~ hpc2$cdate1, type = "l",xlab="",ylab = "Global Active Power (kilowatts)")
dev.off()