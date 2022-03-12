# GettingAndCleaningData
An exercise that demonstrates the ability to collect, work with, and clean a data set.

One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The analysis file (run_analysis.R) contains the step-by-step script of transforming the raw data from UCI website into a tidy version
containing all split data into one, a having a more comprehensive factors and column names. To breakdown the transformation:
1. Starts with downloading from the website and immediately unzips the document into your working directory 
2. Assign all raw data (txt files) into their respective variables in R script and update with more comprehensible column names.
3. Bind training data sets and test data sets by columns and finally, combine train and test data sets by row to form one big data set.
4. Extracts only the measurement on the mean and standard deviation for each measurement
5. Merge dataset with activity label names to name the activities 
6. Clean up the column names of the dataset to make it more intuitive
7. Aggregate the cleaned data set to average of each variable for each activity and each subject 
