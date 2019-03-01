library(lubridate)



health_impact <- read.csv("data/storm_data_summary.csv")

state_list <- unique(as.character(sort(health_impact$STATE)))

month_list <- unique(as.character(sort(health_impact$MONTH)))
#month_list <- unique(as.character(month(sort(health_impact$MONTH), label = T)))
