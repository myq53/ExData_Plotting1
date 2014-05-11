power<-read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
subpower <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
png(file = "plot1.png")
hist(subpower[,3],col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()