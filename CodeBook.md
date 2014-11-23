---
title: "CodeBook"
author: "Francois Laforgia"
date: "22 Nov 2014"
output: html_document
---

This document is intended for description of the data provided in the file 'MeanAndStd.txt'. 

### 1. DATA DESCRIPTION
There are two data sets, one measured during a test (X_test.txt) and the other during a training (X_train.txt). These data sets contains the raw signals and the transformed signals used in this programming assignment.
These signals are of two kinds and some transformations were applied to them to generate variables.

#### 1.1. Temporal Signals

The raw signals are measured from the accelerometer and from the gyroscpe 3-axial of the smartphone. The 3-axial signals are transformed to get a magnitude of these signals.   
Their names started with a 't'.

#### 1.2. Frequency Signals

These temporal signals are transformed to become frequency signals.   
Their names starts with 'f'.

#### 1.3. Transformation Applied To The Raw Signals 

Once these signals are generated, one applies transformations to generate variables from them.  
These transformations are:
```
NB: the operations in bold are the ones which will be used in this programming assignment
```

**mean(): Mean value**  
**std(): Standard deviation**  
mad(): Median absolute deviation  
max(): Largest value in array  
min(): Smallest value in array  
sma(): Signal magnitude area  
energy(): Energy measure. Sum of the squares divided by the number of values.  
iqr(): Interquartile range  
entropy(): Signal entropy  
arCoeff(): Autorregresion coefficients with Burg order equal to 4  
correlation(): correlation coefficient between two signals  
maxInds(): index of the frequency component with largest magnitude  
meanFreq(): Weighted average of the frequency components to obtain a mean frequency  
skewness(): skewness of the frequency domain signal  
kurtosis(): kurtosis of the frequency domain signal  
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.  
angle(): Angle between to vectors.

### 2. VARIABLES NAMES

The names of the variables use the following rule.
#### 2.1 Raw Signals
```{r}
<type of signal><name of sensor>-<operation>[-axis]
```
Ex:  
***fBodyGyro-mean()-X*** with:  
type of signal = f  
name of sensor = bodyGyro   
operation = mean()  
-axis = X axis 

For this assignment we will use the following variables names:

"tBodyAcc-mean()-X"   
"tBodyAcc-mean()-Y"  
"tBodyAcc-mean()-Z"                
"tGravityAcc-mean()-X"  
"tGravityAcc-mean()-Y"  
"tGravityAcc-mean()-Z"           
"tBodyAccJerk-mean()-X"  
"tBodyAccJerk-mean()-Y"  
"tBodyAccJerk-mean()-Z"           
"tBodyGyro-mean()-X"  
"tBodyGyro-mean()-Y"  
"tBodyGyro-mean()-Z"             
"tBodyGyroJerk-mean()-X"  
"tBodyGyroJerk-mean()-Y"  
"tBodyGyroJerk-mean()-Z"          
"tBodyAccMag-mean()"  
"tGravityAccMag-mean()"  
"tBodyAccJerkMag-mean()"           
"tBodyGyroMag-mean()"    
"tBodyGyroJerkMag-mean()"           
"fBodyAcc-mean()-X"              
"fBodyAcc-mean()-Y"               
"fBodyAcc-mean()-Z"               
"fBodyAcc-meanFreq()-X"     
"fBodyAcc-meanFreq()-Y"           
"fBodyAcc-meanFreq()-Z"           
"fBodyAccJerk-mean()-X"            
"fBodyAccJerk-mean()-Y"           
"fBodyAccJerk-mean()-Z"           
"fBodyAccJerk-meanFreq()-X"        
"fBodyAccJerk-meanFreq()-Y"       
"fBodyAccJerk-meanFreq()-Z"       
"fBodyGyro-mean()-X"               
"fBodyGyro-mean()-Y"              
"fBodyGyro-mean()-Z"              
"fBodyGyro-meanFreq()-X"         
"fBodyGyro-meanFreq()-Y"          
"fBodyGyro-meanFreq()-Z"          
"fBodyAccMag-mean()"             
"fBodyAccMag-meanFreq()"          
"fBodyBodyAccJerkMag-mean()"      
"fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()"         
"fBodyBodyGyroMag-meanFreq()"     
"fBodyBodyGyroJerkMag-mean()"    
"fBodyBodyGyroJerkMag-meanFreq()"  
"tBodyAcc-std()-X"                
"tBodyAcc-std()-Y"               
"tBodyAcc-std()-Z"                
"tGravityAcc-std()-X"             
"tGravityAcc-std()-Y"            
"tGravityAcc-std()-Z"             
"tBodyAccJerk-std()-X"            
"tBodyAccJerk-std()-Y"           
"tBodyAccJerk-std()-Z"            
"tBodyGyro-std()-X"               
"tBodyGyro-std()-Y"              
"tBodyGyro-std()-Z"               
"tBodyGyroJerk-std()-X"           
"tBodyGyroJerk-std()-Y"          
"tBodyGyroJerk-std()-Z"           
"tBodyAccMag-std()"               
"tGravityAccMag-std()"           
"tBodyAccJerkMag-std()"           
"tBodyGyroMag-std()"              
"tBodyGyroJerkMag-std()"         
"fBodyAcc-std()-X"                
"fBodyAcc-std()-Y"                
"fBodyAcc-std()-Z"               
"fBodyAccJerk-std()-X"            
"fBodyAccJerk-std()-Y"            
"fBodyAccJerk-std()-Z"           
"fBodyGyro-std()-X"               
"fBodyGyro-std()-Y"               
"fBodyGyro-std()-Z"              
"fBodyAccMag-std()"               
"fBodyBodyAccJerkMag-std()"       
"fBodyBodyGyroMag-std()"         
"fBodyBodyGyroJerkMag-std()"     

### 3. DATA TRANSFORMATION
The data sets are given for all the signals and all the operations. The names of the variables are not provided in the data sets but are provided in an external file ("features.txt"). This file is common to the two data sets.  

The transofrmations applied to the data sets are:

* Merge the two data sets (train and test)
* Set the variables names from the features.txt file
* Extract the mean() and std() variables
* Generate the mean of each value in this new data set
