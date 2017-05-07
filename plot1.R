png("plot1.png",width=480, height=480)
dates<-subset(data_table, Date=="1/02/2007"|Date=="2/02/2017")
hist(dates$Global_active_power, xlab = "Global Active Power (killowatts)", ylab = "Frequency", col="red", main="Global Active Power")
dev.off()