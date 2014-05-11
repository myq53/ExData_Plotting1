power<-read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
subpower <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
datetime<-strptime(paste(subpower[,1],subpower[,2]),format = "%d/%m/%Y %H:%M:%S")
png(file = "plot3.png")
plot(datetime,subpower[,7],type="l",xlab="",ylab="Energy sub metering")
points(datetime,subpower[,8],type="l",col="red")
points(datetime,subpower[,9],type="l",col="blue")
legend("topright",lty=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()