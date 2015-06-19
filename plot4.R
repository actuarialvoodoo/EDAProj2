#plot4

g<-qplot(year, Emissions/1000, data=plot4_data,main="PM2.5 from Coal Combustion Sources",xlab="Year",ylab="Emissions (in thousands)")
g+geom_bar(stat="identity")