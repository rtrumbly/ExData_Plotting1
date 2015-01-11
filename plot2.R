#plot 2
power = read.table('household_power_consumption.txt', header = TRUE, sep = ';',colClasses = 'character')
power.sub = power[power$Date == '1/2/2007' | power$Date == '2/2/2007',]
power.sub$date = as.Date(power.sub$Date, format = '%d/%m/%Y')
power.sub$time = strptime(paste(power.sub$date, power.sub$Time), '%Y-%m-%d %H:%M:%S')
with(power.sub, plot(time, Global_active_power,  xlab = '', ylab = 'Global Active Power, (kilowatts)', type = 'l'))
