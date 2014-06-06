source("powerData.R")

png("plot2.png", width = 480, height = 480)

powerData <- powerData()

plot(
  powerData$DateTime,
  powerData$Global_active_power,
  type = "l",
  xlab = "",
  ylab = "Global Active Power (kilowatts)",
) 

invisible(dev.off())
