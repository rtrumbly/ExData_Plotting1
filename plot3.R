#plot 3
power = read.table('household_power_consumption.txt', header = TRUE, sep = ';',colClasses = 'character')
power.sub = power[power$Date == '1/2/2007' | power$Date == '2/2/2007',]
power.sub$date = as.Date(power.sub$Date, format = '%d/%m/%Y')
power.sub$time = strptime(paste(power.sub$date, power.sub$Time), '%Y-%m-%d %H:%M:%S')
with(power.sub, plot(time, Sub_metering_1,  xlab = '', ylab = 'Energy sub metering', type = 'l'))
lines(power.sub$time, power.sub$Sub_metering_2,col = 'red')
lines(power.sub$time, power.sub$Sub_metering_3,col = 'blue')
legend('topright', c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty = 1, cex= 0.75, col = c('black', 'red','blue'))
