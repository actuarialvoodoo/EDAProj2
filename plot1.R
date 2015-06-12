
source("dataprocessing.R")

png("plot1.png")
barplot(plot1_data$EmissionsMill,
        names.arg=yearlist, 
        ylab="Total Emissions (in millions)",
        main="PM2.5 Emissions by Year"
        )
dev.off()