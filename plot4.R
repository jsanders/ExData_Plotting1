source("powerData.R")

png("plot4.png", width = 480, height = 480)

powerData <- powerData()

par(mfrow = c(2,2))
plot(powerData$DateTime, powerData$Global_active_power, type = 'l', xlab = "", ylab = "Global Active Power")
plot(powerData$DateTime, powerData$Voltage, type = 'l', xlab = "datetime", ylab = "Voltage")
plot(powerData$DateTime, powerData$Sub_metering_1, type='l', xlab = "", ylab = "Energy sub metering")
lines(powerData$DateTime, powerData$Sub_metering_2, type='l', col="red")
lines(powerData$DateTime, powerData$Sub_metering_3, type='l', col="blue")
legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"), bty = "n")
plot(powerData$DateTime, powerData$Global_reactive_power, type = 'l', xlab = "datetime", ylab = "Global_reactive_power")

invisible(dev.off())
