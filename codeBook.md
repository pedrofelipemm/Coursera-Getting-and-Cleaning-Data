## Files
1. codeBook.md - File describing the variables in datasets.
2. run_analysis.R - It's the script used to clean the data and build the tidy.txt file.
3. tidy.txt - It's the tidy dataset with the average of each variable for each activity and each subject.

## Variable in run_analysis.R
1. xTest - Raw data.
2. yTest - Raw data.
3. testSubject - Raw data.
4. xTrain - Raw data.
5. yTrain - Raw data.
6. trainSubject - Raw data.
7. features - Raw data. Feature names for datasets.
8. activities - Raw data. Activity names for datasets.
9. xData - Merged data from xTrain and xTest.
10. yData - Merged data from yTrain and yTest.
11. subjectData - Merged data from testSubject and trainSubject.
12. meanStdIndexes - Mean and stardard deviation indexes extracted from features.
13. activityValues - Activity number values extracted from activities.
14. data - Merged dataset from subjectData, yData and xData.
15. rowLength - Length of each row, used to extract mean and standard deviation from data variable.
16. tidy - The final tidy dataset with the average of each variable for each activity and each subject.