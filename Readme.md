---
title: "Readme"
author: "Francois Laforgia"
date: "22 Nov 2014"
output: html_document
---

This document is the dwescription of the run_analysis R script.

### 1. USAGE
To use this script, copy it first in the working directory where the data sets are located and execute it without options.

### 2. SCRIPT DESCRIPTION
This script will do the following operations.

* Detection of the data sets     
If the files do not exist, the scipt will stop and display the error message "File not found".  

* Main body of the script  
This part will execute the steps required by the programming assignment. Please note that the script doesn't do the steps in the same order than the one given in the programming assignment. This has been done in the purpose of efficiency and ease.  
This will merge the data sets and assign a name to the variables. It will extract the mean() and std() variables. The mean() variables contain the average computation for the raw signals and the the std() contains the computation of the standard deviation for the same signals.  
And last the script will compute the mean for each variables that described each activity for each subjects.

* Output of the script  
The last part is a print() function to display the result of the mean computation on the screen.

More information are available on the scripts comments.