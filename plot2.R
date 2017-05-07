png("plot2.png",width=480, height=480)
dates<-subset(data_table, Date=="1/02/2007"|Date=="2/02/2017")
date_col <- paste(dates$Date,dates$Time)
date_col<-strptime(date_col, "%Y-%m-%d %H:%M:%S")
dates[["full_date"]]<-date_col
with(dates, plot(full_date,Global_active_power, type="l", ylab="Global Active Power (kilowatts)"))
dev.off()