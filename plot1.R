power = read.table('household_power_consumption.txt', header = TRUE, sep = ';')
power.sub = power[power$Date == '1/2/2007' | power$Date == '2/2/2007',]
hist(as.numeric(as.character(power.sub$Global_active_power)),col = 'red', xlab = 'Global Active Power, (kilowatts)',ylab='Frequency',main ='Global Active Power')