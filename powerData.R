url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipfile <- "data/household_power_consumption.zip"
if(!file.exists(zipfile)) { download.file(url, destfile = zipfile, method = "curl", quiet = TRUE) }
txtfile <- "data/household_power_consumption.txt"
if(!file.exists(txtfile)) { unzip(zipfile, exdir = "data") }

library(sqldf)
if(!exists("PowerData")) {
  PowerData <- read.csv2.sql(txtfile, 'SELECT * FROM file WHERE Date IN ("1/2/2007", "2/2/2007")')
  PowerData$DateTime <- with(PowerData, strptime(paste(Date, Time), "%d/%m/%Y %X"))
}