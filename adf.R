library(readxl)
library(tidyverse)
library(tseries)

my_data<-read_xlsx("time series data (1).xlsx")
test_list<-list()
k<-length(my_data)-1
for (i in 2:k){
  test_list[[i-1]]<-adf.test(na.omit(my_data[[i]]))
}
names(test_list)<-names(my_data[2:k])


