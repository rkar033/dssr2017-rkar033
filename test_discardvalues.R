#set working directory for ephys data files
setwd("/home/admin1/Desktop/Data/ephys")

#read dummy data file
dummyVmdat <- read.csv(file = "dummyephys.csv", header =TRUE)
h

#basic r plot dummy data
plot(dummyVmdat, typ="l", xlab= "timepoint", ylab= "V")

#list of all time points
print(dummyVmdat[ ,1])

#list of all Vm measurements
print(dummyVmdat[,2])
mean(dummyVmdat[,2])

#extract Vm measurements when cell is polarized below 0mV, and find mean
extractVm <- subset(dummyVmdat, dummyVmdat[,2] <= 0)
print(extractVm)
mean(extractVm)

#extract Vm measurements when cell is polarized below 0mV at time points before t=8, and find mean
extractVm <- subset(dummyVmdat, dummyVmdat[,1] <8 & dummyVmdat[,2] <= 0)
print(extractVm)
mean(extractVm)

#extract Vm measurements when cell is polarized below -20mV at time points before t=8, and find mean
extractVm <- subset(dummyVmdat, dummyVmdat[,1] <8 & dummyVmdat[,2] <= -20)
print(extractVm)
mean(extractVm[,2])

library(ggplot2)
#basic scatter plot
ggplot2::qplot(dummyVmdat[,1], dummyVmdat[,2], xlab= "t", ylab= "V")

#basic line graph, isnt working at the mo :(
ggplot2::ggplot(data= dummyVmdat, aes(x= Time, y= V))
                
                
#Assign variable v to column two of data
V <- dummyVmdat[,2]
returnValue(V)

#calculate moving mean in column 2, "V" as the running mean over 2 sides; 
#note default method arguement is set to "convolution" ie Filter(method = c("convolution")
#need to divide by 2, because the filter kernel size is 2
filter(V, c(1,1), sides = 2, method=c("convolution")) / 2

#calculate moving mean in column 2, "V" as the running mean over 3 values; 
filter(V, c(1,1,1), sides=2, method=c("convolution")) / 3

#extract Vm measurements when cell is polarized below -20mV at time points before t=8, and find mean
extractV <- subset(dummyVmdat, dummyVmdat[,1] <8 & dummyVmdat[,2] <= -20)
print(extractV)
mean(extractV[,2])
               