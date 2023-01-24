library('move')
library('ctmm')

# input: moveStack - output: telemetry.list
rFunction <- function(data) {
  result <- as.telemetry(data)
  if (is(result,'telemetry')) result <- list(result) #force list, can be with emtpy table
  return(result)
}
