run_analysis = function() {
        
        #Get data from Internet
        filename = "dataset.zip"
        if(file.exists(filename)){
                file.remove(filename)
        }
        
        download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                filename, "curl", TRUE)
        if(file.exists(filename)){
                unzip(filename)
        }
        else{
                stop("File did not download.")
        }

        #Read activity codes
        activitycodes <- read.table("./UCI HAR Dataset/activity_labels.txt", 
                header=FALSE, sep = " ", col.names = c("id", "activityname"))

        #Read column names for feature data
        features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE,
                sep = " ", col.names = c("id", "featurename"))

        #Read test subject data
        testsubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", 
                header=FALSE, sep = " ", col.names = c("subject"))

        #Read test features, assign variable names
        testxdata <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE, 
                sep = "", col.names = features[, "featurename"])
        
        #Read test activities
        testydata <- read.table("./UCI HAR Dataset/test/Y_test.txt", header=FALSE, 
                sep = "", col.names = c("activity"))

        #Read training subject data
        trainsubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", 
                header=FALSE, sep = " ", col.names = c("subject"))

        #Read training features, assign variable naems
        trainxdata <- read.table("./UCI HAR Dataset/train/X_train.txt", 
                header=FALSE, sep = "", col.names = features[, "featurename"])

        #Read training activities
        trainydata <- read.table("./UCI HAR Dataset/train/Y_train.txt", header=FALSE, 
                sep = "", col.names = c("activity"))

        #Combine test data frames into one
        mergedtestdata <- cbind(testsubject, testxdata, testydata)
        
        #Combine training data frames into one
        mergedtraindata <- cbind(trainsubject, trainxdata, trainydata)
        
        #Combine testing and training data frames into one
        mergeddataset <- rbind(mergedtestdata, mergedtraindata)
        
        #Clean variable names by removing periods from column names
        names(mergeddataset) <- gsub("\\.", "", names(mergeddataset))
        
        #Reduce data set to columns with means and std devs only, keep subject
        #and activity columns
        meanstdindex <- grepl("[Mm]ean", names(mergeddataset)) | grepl("std", 
                names(mergeddataset)) | grepl("subject", names(mergeddataset)) |
                grepl("activity", names(mergeddataset))
        
        #Filter data set for only columns with mean and std dev
        filtereddataset <- mergeddataset[, meanstdindex]
        
        #Convert activity codes in mergeddataset to activity names
        filtereddataset$activity <- activitycodes[filtereddataset$activity, 
                "activityname"]
        
        #Aggregate the filtered data set into summary table
        tidydataset <- aggregate(. ~subject + activity, filtereddataset, mean)
        
        #Write out data set to text file
        write.table(tidydataset, "tidydataset.txt", row.name=FALSE)
}