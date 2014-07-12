source("powerData.R")

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

# Top left
with(PowerData, plot(DateTime, Global_active_power,
     xlab = "", ylab = "Global Active Power", type = "l"))

# Top right
with(PowerData, plot(DateTime, Voltage,
     xlab = "datetime", ylab = "Voltage", type = "l"))

# Bottom left
with(PowerData, plot(DateTime, Sub_metering_1,
     type = "l", xlab = "", ylab = "Energy sub metering"))
with(PowerData, lines(DateTime, Sub_metering_2,
      type = "l", col = "red"))
with(PowerData, lines(DateTime, Sub_metering_3,
      type = "l", col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1, bty = "n", cex = 0.8)

# Bottom right
with(PowerData, plot(DateTime, Global_reactive_power,
     xlab = "datetime", ylab = "Global_reactive_power", type = "l"))

dev.off()