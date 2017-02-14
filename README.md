# dssr2017-rkar033

#Vision
To create an automated method for detecting neuronal action potential ('spike') firing patterns 

#Mission
* To extract information about electrophysiological properties: baseline Vm, firing frequency, plateau potential frequency and duration from each .csv data file.
* To compare differences in electrophysiological properties between control vs treatment groups in a graphical form. 

#Objectives
1. To convert .abf file formats (proprietry acquisition) into .csv files
% (Current options are to use Clampfit or Origin programmes, proprietary, for exporting into .csv)
* Does the file already exist in .csv form? If so, skip .abf conversion step
2. To list batch of .csv data files. 
3. .csv files need to be renamed  yyyymmdd### to yyyymmdd##_culture_age_treatment 
3. To open each .csv file -two column form: ColA Time (ms), ColB Membrane potential (mV) in R
4. Plot data with line graphs
2. To detect an action potential 
