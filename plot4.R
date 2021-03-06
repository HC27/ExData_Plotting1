png("plot4.png",width=480, height=480)
par(mfrow=c(2,2))
data_table$Date <- as.Date(data_table$Date,"$d/$m/$Y")
dates<-subset(data_table, Date=="2007-02-01"|Date=="2007-02-02")
date_col <- paste(dates$Date,dates$Time)
date_col<-strptime(date_col, "%Y-%m-%d %H:%M:%S")
dates[["full_date"]]<-date_col
with(dates, plot(full_date, Global_active_power,ylab="Global active power", type="l"))
with(dates, plot(full_date, Voltage,ylab="voltage",xlab="datetime", type="l"))

with(dates, plot(full_date,Sub_metering_1,type="l", ylab="Energy sub metering"))
lines(dates$full_date, dates$Sub_metering_2, col="red")
lines(dates$full_date, dates$Sub_metering_3, col="blue")

with(dates, plot(full_date,Global_reactive_power,type="l", ylab="Global reactive power"))

dev.off()