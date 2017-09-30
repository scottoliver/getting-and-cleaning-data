# Getting and Cleaning Data Course Project

## Contents
1. [run_analysis.R](#runanalysis)
2. [tinydataset.txt](#tinydataset)
3. [CodeBook.md](#codebook)

## run_analysis.R<a name="runanalysis"></a>

The R script `run_analysis.R` contains the script used to transform the Samsung Galaxy accelerometer data set found at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. It completes the following items:
* Download and extract the data set from the zip file
* Merge the testing and training data set into one complete set of data
* Replace the activity codes with the corresponding activity names
* Extract the mean and standard deviation measurements (found using "mean" and "std") into a separate data set
* Export a final data set containing the averages of each mean and standard deviation for each subject and activity

## tinydataset.txt<a name="tinydataset"></a>
The file `tinydataset.txt` is the output of `run_analysis.R`. To import this file into R, use the following R code:
```
read.table("tidydataset.txt", header = TRUE)
```
This will provide a data frame of 180 objects with 88 variables.

## CodeBook.md<a name="codebook"></a>
For detailed information regarding the variables in tinydataset.txt, refer to the file `CodeBook.md`.