#load the lampyrid data from fiigshare website
lampyrid <- read.csv(file = "https://ndownloader.figshare.com/files/3686040", header = T)
#install package we need - lubridate, tools>install packages
library(lubridate)
#change dates from month, day year 
lampyrid$newdate <- mdy(lampyrid$DATE)
#wow that was magic! by calling the new vector lampyrid$newdate, the new vector of dates is created as a column within the loaded dataset.
lampyrid$year <- year(lampyrid$newdate) #create a column for year
lampyrid$doy <- yday(lampyrid$newdate)