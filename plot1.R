
source("dataprocessing.R")

png("plot1.png")
barplot(plot1_data$EmissionsMill,
        names.arg=plot1_year_list, 
        ylab="Total Emissions (in millions)",
        main="PM2.5 Emissions by Year"
        )
dev.off()