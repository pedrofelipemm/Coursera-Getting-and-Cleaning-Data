# Installing, if needed, and loading required package
if(!require("plyr"))
    install.packages("plyr")
library(plyr)


# loading data
xTest <- read.table(file = "./UCI HAR Dataset/test/X_test.txt", stringsAsFactors = F)
yTest <- read.table(file = "./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = F)
testSubject <- read.table(file = "./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = F)

xTrain <- read.table(file = "./UCI HAR Dataset/train/X_train.txt", stringsAsFactors = F)
yTrain <- read.table(file = "./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = F)
trainSubject <- read.table(file = "./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = F)

features <- read.table("./UCI HAR Dataset/features.txt")
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")


# Merging data
xData <- rbind(xTrain, xTest)
yData <- rbind(yTrain, yTest)
subjectData <- rbind(trainSubject, testSubject)


# Extracting mean and standard deviation columns
meanStdIndexes <- grep("-(mean|std)\\(\\)", features[, 2]) # Magic number 2: variable name index
xData <- xData[, meanStdIndexes]


# Renaming column
names(xData) <- features[meanStdIndexes, 2] # Magic number 2: variable name index
names(yData) <- "activity"
names(subjectData) <- "subject"


# Making activity column values more readable
activityValues <- yData[, 1]  # Magic number 1: getting activity vector value
yData[, 1] <- activities[activityValues, 2] # Magic number 2: getting descriptive labels.


# Merging the datasets into one
data <- cbind(subjectData, yData, xData)


# Creating the tidy dataset
rowLength <- length(data[1,])

tidy <- ddply(data, .(subject, activity), function(row) {
    return(colMeans(row[, 3:rowLength])) # Magic number 3: starting index since the first two
                                         # columns are means and stds.
})

write.table(tidy, "tidy.txt", row.name = FALSE)
