plot2 <- function(file, dateFrom="2007-02-01", dateTo="2007-02-02") {
  timeData <- read.table(file, header=T, sep=";", na.strings="?")
  timeData[[2]] <- strptime(paste(timeData[[1]], " ", timeData[[2]]) , format="%d/%m/%Y %H:%M:%S")
  timeData[[1]] <- as.Date(timeData[[1]], format="%d/%m/%Y")
  timeData <- timeData[timeData$Date>= as.Date(dateFrom) & timeData$Date <= as.Date(dateTo), ]
  plot(timeData$Time, timeData$Global_active_power, xaxt="n")
  axis.Date(side = 1, timeData$Date, format="%a")
}
