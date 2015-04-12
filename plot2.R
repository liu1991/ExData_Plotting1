library(lubridate)
dat0 <- read.table("household_power_consumption.txt",header=T,sep=";",nrow=100000,na.strings="?")
dat <- dat0[min(which(dat0$Date=="1/2/2007")):max(which(dat0$Date=="2/2/2007")),]
datetime <- dmy_hms(paste(dat$Date,dat$Time))
Sys.setlocale("LC_TIME", "English")
png("plot2.png",width=480,height=480)
plot(datetime,dat$Global_active_power,"l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()