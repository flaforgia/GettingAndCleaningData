run_analysis <- function() {
        
        # Check if data sets exist
        if (!file.exists("features.txt")) {
                stop("File not found")
        }
        if (!file.exists("X_train.txt")) {
                stop("File not found")
        }
        if (!file.exists("X_test.txt")) {
                stop("File not found")
        }
        
        # read the data sets
        print("reading feature.txt")
        DataSetNames <- read.table("features.txt")
        print("reading train data set")
        DataSetTrain <- read.table("X_train.txt")
        print("reading test data set")
        DataSetTest <- read.table("X_test.txt")
        
        DataSetNames <- DataSetNames[[2]]
        
        # STEP 1:
        # Merge the data sets into one dataset
        print("merge data sets")
        DataSetMerged <- merge(DataSetTest,DataSetTrain,all=TRUE)
        
        # named the column of the dataset based on the label found in the 
        # feature.txt file
        names(DataSetMerged) <- DataSetNames
        
        # STEP 3:
        #build the character vector with the name of all the features for 
        # mean() (average) and for std() (standard deviation).
        # (cf. figure.txt). 
        print("Build the dataset for mean() and std()")
        DataSetFilterNames <- grep("-[Mm]ean", 
                                   DataSetNames, 
                                   value=TRUE)
        DataSetFilterNames <- append(DataSetFilterNames, 
                                     grep("-[Ss]td", 
                                          DataSetNames, 
                                          value=TRUE))
        
        # STEP 2:
        # Create the df with all the mean() and std() measurements as requested
        # in step 2 of the programming assignment. 
        #
        # STEP 4:
        # This function does also the step 4 of the programming assignment as
        # it will used the labels defined in the main dataset, which are also
        # the labels used in the step 3.
        DataSetTotal <- DataSetMerged[,DataSetFilterNames]
        
        # STEP 5:
        # Build a tidy dataset which contains only the means for all the 
        # variables of the dataset built in step 4.
        print("Build the tidy dataset")
        DataSetMeanTotal <- apply(DataSetTotal, 2, mean)
        
        # output the data
        print(DataSetMeanTotal)
}