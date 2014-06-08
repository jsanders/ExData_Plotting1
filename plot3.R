source("powerData.R")

png("plot3.png", width = 480, height = 480)

powerData <- powerData()

plot(powerData$DateTime, powerData$Sub_metering_1, type='l', xlab = "", ylab = "Energy sub metering")
lines(powerData$DateTime, powerData$Sub_metering_2, type='l', col="red")
lines(powerData$DateTime, powerData$Sub_metering_3, type='l', col="blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"))

invisible(dev.off())
