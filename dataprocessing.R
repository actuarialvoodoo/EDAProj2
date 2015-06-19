

NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")

NEI$type<-factor(NEI$type)
NEI$Pollutant<-factor(NEI$Pollutant)
NEI$SCC<-factor(NEI$SCC)
NEI$year<-factor(NEI$year)

library(dplyr)
plot1_year_list <- c(1999,2002,2005,2008)
plot1_data <- NEI %>% group_by(year) %>% 
               mutate(EmissionsMill = Emissions/1000000) %>%
               filter(year %in% plot1_year_list) %>% 
               summarise_each(funs(sum),EmissionsMill)

plot2_data <- NEI %>% group_by(year) %>%
               mutate(Emissions1000 = Emissions/1000) %>%
               filter(fips=="24510") %>%
               summarise_each(funs(sum),Emissions1000)

plot3_data <- NEI %>% filter(fips == "24510")

CoalCombustSCC <- SCC$SCC[grep("Fuel Comb.+[Cc]oal",SCC$EI.Sector)]
plot4_data <- NEI %>% filter(SCC %in% CoalCombustSCC) 

MotorVeh<- SCC$SCC[grep("Mobile.+Vehicles",SCC$EI.Sector)]
plot5_data <- NEI %>% filter(SCC %in% MotorVeh, fips=="24510")

plot6_data <- NEI %>% filter(SCC %in% MotorVeh, fips %in% c("24510","06037"))