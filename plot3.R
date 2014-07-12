source("powerData.R")

png("plot3.png", width = 480, height = 480)

with(PowerData, plot(DateTime, Sub_metering_1,
     type = "l", xlab = "", ylab = "Energy sub metering"))
with(PowerData, lines(DateTime, Sub_metering_2,
      type = "l", col = "red"))
with(PowerData, lines(DateTime, Sub_metering_3,
      type = "l", col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1)

dev.off()