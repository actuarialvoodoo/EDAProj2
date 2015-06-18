library(ggplot2)

qplot(year,
      Emissions/1000,
      data=plot3_data, 
      facets=.~type)+geom_bar(stat="identity")+theme(axis.text=element_text(angle=45))
