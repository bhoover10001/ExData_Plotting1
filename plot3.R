plot3 <- function(file, dateFrom="2007-02-01", dateTo="2007-02-02") {
  timeData <- read.table(file, header=T, sep=";", na.strings="?", nrows=70000)
  timeData[[2]] <- strptime(paste(timeData[[1]], " ", timeData[[2]]) , format="%d/%m/%Y %H:%M:%S")
  timeData[[1]] <- as.Date(timeData[[1]], format="%d/%m/%Y")
  timeData <- timeData[timeData$Date>= as.Date(dateFrom) & timeData$Date <= as.Date(dateTo), ]
  plot(timeData$Time, timeData$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
  lines(timeData$Time, timeData$Sub_metering_1)
  lines(timeData$Time, timeData$Sub_metering_2, col="red")
  lines(timeData$Time, timeData$Sub_metering_3, col="blue")
  legend("topright", legend = c("sub_metering_1", "sub_metering_2", "sub_metering_3"), col=c("black","red","blue"), lwd=2)
  axis.Date(side = 1, timeData$Time, format="%a")
}
