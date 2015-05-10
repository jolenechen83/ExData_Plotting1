##Plot 3
png(filename="plot3.png",width = 480, height = 480, units = "px")
with(hpc2, {
    plot(Sub_metering_1 ~ cdate1, type = "l", xlab="",ylab = "Energy sub metering")
    lines(Sub_metering_2 ~ cdate1, col = 'Red')
    lines(Sub_metering_3 ~ cdate1, col = 'Blue') 
    legend("topright", col = c("black", "red", "blue"), lwd = 2, lty = 1, 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
dev.off()