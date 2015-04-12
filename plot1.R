dat0 <- read.table("household_power_consumption.txt",header=T,sep=";",nrow=100000,na.strings="?")
dat <- dat0[min(which(dat0$Date=="1/2/2007")):max(which(dat0$Date=="2/2/2007")),]
#dat$Date <- as.Date(dat$Date,"%d/%m/%Y")
#dat$Time <- strptime(dat$Time,"%H:%M:%S")
png("plot1.png",width=480,height=480)
hist(dat$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()