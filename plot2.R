png("plot2.png",width=480, height=480)
data_table$Date <- as.Date(data_table$Date,"$d/$m/$Y")
dates<-subset(data_table, Date=="2007-02-01"|Date=="2007-02-02")
date_col <- paste(dates$Date,dates$Time)
date_col<-strptime(date_col, "%Y-%m-%d %H:%M:%S")
dates[["full_date"]]<-date_col
with(dates, plot(full_date,Global_active_power, type="l", ylab="Global Active Power (kilowatts)"))
dev.off()