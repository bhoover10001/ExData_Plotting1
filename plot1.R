plot1 <- function(file, dateFrom="2007-02-01", dateTo="2007-02-02") {
  timeData <- read.table(file, header=T, sep=";", na.strings="?")
  timeData[[2]] <- strptime(paste(timeData[[1]], " ", timeData[[2]]) , format="%d/%m/%Y %H:%M:%S")
  timeData[[1]] <- as.Date(timeData[[1]], format="%d/%m/%Y")
  timeData <- timeData[timeData$Date>= as.Date(dateFrom) & timeData$Date <= as.Date(dateTo), ]
  hist(timeData$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
}
