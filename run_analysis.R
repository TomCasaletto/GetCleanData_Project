
# Get the measurement data variables descriptive names
measurementLabelsFile <- "./UCI HAR Dataset/features.txt"
dfMeasurementLabels <- read.table(measurementLabelsFile)
measurementLabels <-as.character(dfMeasurementLabels$V2)

# Get the activity descriptive names
activityLabelsFile <- "./UCI HAR Dataset/activity_labels.txt"
dfActivityLabels <- read.table(activityLabelsFile)
activityLabels <-as.character(dfActivityLabels$V2)

# Read the test data set

# Read in the measurement data
testDataFile <- "./UCI HAR Dataset/test/X_test.txt"
dfTestData <- read.table(testDataFile, col.names = measurementLabels)

# Read in the activty data and add it as a column
testActivityFile <- "./UCI HAR Dataset/test/y_test.txt"
dfTestActivity <- read.table(testActivityFile)
dfTestData$Activity <-dfTestActivity$V1

# Read in the subject data and add it as a column
testSubjectFile <- "./UCI HAR Dataset/test/subject_test.txt"
dfTestSubject <- read.table(testSubjectFile)
dfTestData$Subject <-dfTestSubject$V1

# Read the training data set

# Read in the measurement data
trainDataFile <- "./UCI HAR Dataset/train/X_train.txt"
dfTrainData <- read.table(trainDataFile, col.names = measurementLabels)

# Read in the activty data and add it as a columnhttp://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
trainActivityFile <- "./UCI HAR Dataset/train/y_train.txt"
dfTrainActivity <- read.table(trainActivityFile)
dfTrainData$Activity <-dfTrainActivity$V1

# Read in the subject data and add it as a column
trainSubjectFile <- "./UCI HAR Dataset/train/subject_train.txt"
dfTrainSubject <- read.table(trainSubjectFile)
dfTrainData$Subject <-dfTrainSubject$V1

# Now combine the rows of the test and training data into one data frame
df <- rbind(dfTestData, dfTrainData)

# Change the activity names to factors with more descriptive labels
df$Activity <- factor(df$Activity, labels = dfActivityLabels$V2)

# Extract the mean and standard deviation columns only
idxMean <- grep('mean()',dfMeasurementLabels$V2,'r')
idxStd <- grep('std()',dfMeasurementLabels$V2,'r')
dfMeanStd <- df[,unique(c(idxMean, idxStd))]

# Add the Activity and Subject columns for subsetting
dfMeanStd$Activity <-df$Activity
dfMeanStd$Subject <-df$Subject

# Create tidy data set with the average for each variable for each activity and each subject
tidyData <- aggregate(. ~ Subject+Activity, data = dfMeanStd, FUN=mean)

# Remove excess columns
tidyData$Subject <- NULL
tidyData$Activity <- NULL

# Cleanup the column names
columnNames <-colnames(tidyData)
columnNames <- gsub('\\.', '',columnNames)
columnNames <- tolower(columnNames)
colnames(tidyData) <- columnNames

# Save data out to file
write.table(format(tidyData, digits=3), "tidyData.csv", sep=",", row.name=FALSE)
