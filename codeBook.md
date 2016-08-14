## Files
codeBook.md - File describing the variables in datasets.
run_analysis.R - It's the script used to clean the data and build the tidy.txt file.
tidy.txt - It's the tidy dataset with the average of each variable for each activity and each subject.

## Variable in run_analysis.R
xTest - Raw data.
yTest - Raw data.
testSubject - Raw data.
xTrain - Raw data.
yTrain - Raw data.
trainSubject - Raw data.
features - Raw data. Feature names for datasets.
activities - Raw data. Activity names for datasets.
xData - Merged data from xTrain and xTest.
yData - Merged data from yTrain and yTest.
subjectData - Merged data from testSubject and trainSubject.
meanStdIndexes - Mean and stardard deviation indexes extracted from features.
activityValues - Activity number values extracted from activities.
data - Merged dataset from subjectData, yData and xData.
rowLength - Length of each row, used to extract mean and standard deviation from data variable.
tidy - The final tidy dataset with the average of each variable for each activity and each subject.