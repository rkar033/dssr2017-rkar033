#set working directory for ephys data files
setwd("/home/admin1/Desktop/Data/ephys")
#read ctrl data file
read.csv(file = "160332_ctrl_10xreduced.csv", header =TRUE)
ctrl_firing <- read.csv(file = "160332_ctrl_10xreduced.csv", header =TRUE)
head(ctrl_firing)
dim(ctrl_firing)
??slice
ctrl_firing[1:10, ]
plot(ctrl_firing)
#plot is strange. Max values displayed are out of range. Check this
max(ctrl_firing[ ,2])
min(ctrl_firing[ ,2])

#read 4-mu data file
read.csv(file = "160311_4mu_10xreduced.csv", header =TRUE)
Fmu_firing <- read.csv(file = "160311_4mu_10xreduced.csv", header =TRUE)
head(Fmu_firing)
dim(Fmu_firing)

Fmu_firing[1:10, ]
plot(Fmu_firing)
#plot is perfect with values in range
max(Fmu_firing[ ,2])
min(Fmu_firing[ ,2])
#", header =TRUE)

#playing with plot colours
plot(Fmu_firing, col="purple")
plot(Fmu_firing, typ="l", col="pink", xlab="Time (ms)")

mean(Fmu_firing[ ,2])


#trying to export plot to svg
svg(filename="Fmu_firing.svg", 
    width=5, 
    height=4, 
    pointsize=12)
my_sc_plot(data)
dev.off()

mean(ctrl_firing[ ,2])

#learning box plots
boxplot(Fmu_firing[ ,2], col="red")
boxplot(ctrl_firing[ ,2])

#can you add two box plots together?
boxplot(Fmu_firing[ ,2], col="magenta")
boxplot(ctrl_firing[ ,2], col="cyan")

boxplot(ctrl_firing, at=1)
boxplot(Fmu_firing, at=2, add=TRUE)


#list files in working directory
list.files()

#millisecond to min conversion

ms_to_min <- function(time) {
  min <- ((Fmu_firing[ ,1] )/60000) 
  return(time)
}


