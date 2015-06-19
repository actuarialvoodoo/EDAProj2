#plot6

g <- ggplot(plot6_data) + 
     aes(x=year,y=Emissions/1000, fill=fips) + 
     geom_bar(stat="identity",position="dodge") +
     scale_fill_discrete(name="City",breaks=c("06037","24510"), labels=c("Los Angeles","Baltimore City"))
g <- g + geom_p