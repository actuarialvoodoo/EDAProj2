#source("dataprocessing.R")
barplot(
     plot2_data$Emissions1000,
     names.arg=plot1_year_list,
     ylab="Total Emissions (in Thousands)",
     main="PM2.5 Emissions in Baltimore by Year"
)