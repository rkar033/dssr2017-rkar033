
# Project Charter
Growing digital skills to study neuronal development 

## Vision
* Shared language to engage neuroscience with computerists
* Increase understanding of software development 
* Increase understanding of electronic data repositories

## Mission
Learn to write basic code, with the end goal of automating/ batch processing data. Communicate in language relevant for two-way discussions with software designers.

## Success Criteria
* Simple codes to work consistently. 
* Have a working software at the end: to be tested against manually analysed data 
* Understand Licensing for open-sourcing data/ code

## Objectives 
* Read a typical electrophysiology data file (change in response, Voltage of a cell, over time) in R
* Visualise data using basic R plot
* Visualise data using ggplot2 functions!
* Compute basic statistical info from data set (mean membrane potential of a cell etc).

## Software requirements
* Rstudio (tested on version 1.0.136 on Linux)
* Packages installed: ggplot2 on CRAN, but most other functions used base R
* At the start of each programme, need to run library(ggplot2)
* data files need to be in .csv form. 

## Progress on this front

### Sprint history
1. Read and visualise electrophysiology traces, previously exported to .csv file format. Tick. Note data files are really massive, and take a while to run, particularly when compiling ggplot functions
>  my real .csv electrophysiology data is currently in a hidden git folder. Dummy data file is available.
>  programmes written in practising_R_playing.R
* Lesson learned: run tests and scripts on a dummy data file
2. Figures generated by ggplot are way more impressive! 
* Note aesthetic details are added as 'layers' to the base plot. Can cheat by using qplot, but this automatically includes points (markers), which looks a bit funny with the high sampling rate of real electrophys data.
3. Extract subsets of data from the original data set. THis becomes important say when trying to segment info from the beginning of a recording vs from the end of a recording
4. Got so far as realising that this type of data is considered as time series (immense field in statistics). And in this, step one is to compute basic moving averages of the response variable. R does this with basic filter() function, and as a default uses the convolution method. 
> test_discardvalues.R file

## Given new-found knowledge, wish-list for future work
1. Need to work out event detection  methods for time series data forms


