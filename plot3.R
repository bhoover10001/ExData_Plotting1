source("getUtilityData.R")

plot3 <- function(file, dateFrom="2007-02-01", dateTo="2007-02-02") {
  par(mfcol=c(1,1));
  timeData <- getUtitilyData(file, dateFrom="2007-02-01", dateTo="2007-02-02")
  plot(timeData$Time, timeData$Sub_metering_1, xlab="", ylab="Energy sub metering", type="n")
  lines(timeData$Time, timeData$Sub_metering_1)
  lines(timeData$Time, timeData$Sub_metering_2, col="red")
  lines(timeData$Time, timeData$Sub_metering_3, col="blue")
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black","red","blue"), lwd=2)
  axis.Date(side = 1, timeData$Time, format="%a")
}
