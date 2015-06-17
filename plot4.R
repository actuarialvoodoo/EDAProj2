#plot4

g<-qplot(year, Emissions, data=plot4_data,main="PM2.5 from Coal Combustion Sources",xlab="Year")
g+geom_bar(stat="identity")