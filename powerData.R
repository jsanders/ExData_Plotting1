powerData <- function() {
  fullData <- read.table(
    "household_power_consumption.txt",
    header=T,
    sep=";",
    na.strings="?",
    stringsAsFactors=F
  )

  filtered <- subset(fullData, Date == "1/2/2007" | Date == "2/2/2007")
  filtered$DateTime <-
    strptime(paste(filtered$Date, filtered$Time), format="%d/%m/%Y %H:%M:%S")

  filtered
}
