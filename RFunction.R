library('move')
library('ctmm')

# input: moveStack - output: telemetry.list
rFunction <- function(data) {
  result <- as.telemetry(data,keep=T,drop=F) # retains all columns, and is always a list
  resultRed <- lapply(result, function(x){x[!names(x)%in%c("timestamp.1","timestamp.2","location.long","location.lat","location.long.1","location.lat.1","coords.x1", "coords.x2")]}) # removing columns with duplicated information that just will lead to confusion
  return(resultRed)
}
