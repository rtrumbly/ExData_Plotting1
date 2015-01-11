#plot4
power = read.table('household_power_consumption.txt', header = TRUE, sep = ';',colClasses = 'character')
power.sub = power[power$Date == '1/2/2007' | power$Date == '2/2/2007',]
power.sub$date = as.Date(power.sub$Date, format = '%d/%m/%Y')
power.sub$time = strptime(paste(power.sub$date, power.sub$Time), '%Y-%m-%d %H:%M:%S')
par(mfrow = c(2,2))
with(power.sub,{
    plot(time, Global_active_power,  xlab = '', ylab = 'Global Active Power, (kilowatts)', type = 'l')
    plot(time, Voltage,  xlab = 'datetime', ylab = 'Voltage', type = 'l')
    plot(time, Sub_metering_1,  xlab = '', ylab = 'Energy sub metering', type = 'l')
    lines(power.sub$time, power.sub$Sub_metering_2,col = 'red')
    lines(power.sub$time, power.sub$Sub_metering_3,col = 'blue')
    legend('topright', c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty = 1, cex= 0.25, col = c('black', 'red','blue'))
    plot(time, Global_reactive_power,  xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l')
})