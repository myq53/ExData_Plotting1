power<-read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
subpower <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
datetime<-strptime(paste(subpower[,1],subpower[,2]),format = "%d/%m/%Y %H:%M:%S")
png(file = "plot2.png")
plot(datetime,subpower[,3],type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()