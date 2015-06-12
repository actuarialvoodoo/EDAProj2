NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")

NEI$type<-factor(NEI$type)
NEI$Pollutant<-factor(NEI$Pollutant)
NEI$SCC<-factor(NEI$SCC)

library(dplyr)
plot1_year_list <- c(1999,2002,2005,2008)
plot1_data <- NEI %>% group_by(year) %>% 
               mutate(EmissionsMill = Emissions/1000000) %>%
               filter(year %in% plot1_year_list) %>% 
               summarise_each(funs(sum),EmissionsMill)
