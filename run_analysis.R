
# Download files from website
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dir <- getwd()
destfile <- paste(dir, "getcleandata.zip", sep = "/")
download.file(url, destfile)

# Unzip file
unzip(destfile)

# Assign all text files in a variable
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt', header = FALSE)
features <- read.table('./UCI HAR Dataset/features.txt', header = FALSE)

X_train <- read.table('./UCI HAR Dataset/train/X_train.txt', header = FALSE)
y_train <- read.table('./UCI HAR Dataset/train/y_train.txt', header = FALSE)
subject_train <- read.table('./UCI HAR Dataset/train/subject_train.txt', header = FALSE)

X_test <- read.table('./UCI HAR Dataset/test/X_test.txt', header = FALSE)
y_test <- read.table('./UCI HAR Dataset/test/y_test.txt', header = FALSE)
subject_test <- read.table('./UCI HAR Dataset/test/subject_test.txt', header = FALSE)

# Assign column names (header) for each extracted text files 

colnames(X_train) <- features$V2
colnames(X_test) <- features$V2

colnames(y_train) <- "Label"
colnames(y_test) <- "Label"

colnames(subject_train) <- "SubjectID"
colnames(subject_test) <- "SubjectID"

colnames(activity_labels) <- c("ActivityID", "Activity")

##########################################################################################
# 1. Merges the training and the test sets to create one data set

# Cbind to create train and test dataset
train_dataset <- cbind(subject_train, cbind(X_train, y_train))
test_dataset <- cbind(subject_test, cbind(X_test, y_test))

# rbind to combine train and test dataset
dataset1 <- rbind(train_dataset, test_dataset)


##########################################################################################
# 2. Extracts only the measurement on the mean and standard deviation for each measurement
mean_std_columns <- colnames(dataset1)[grep("SubjectID|Label|\\bmean()\\b|\\bstd()\\b", colnames(dataset1))]
dataset2 <- dataset1[, mean_std_columns]
str(dataset2)

##########################################################################################
# 3. Uses descriptive activity names to name the activities in the data set

# Left join activity labels to get name of y values
dataset3 <- merge(dataset2, activity_labels, by.x = "Label", by.y = "ActivityID", all.x = TRUE)
table(dataset3$Activity)

##########################################################################################
# 4. Appropriately labels the data set with descriptive variable names
str(dataset3)
colnames4 <- colnames(dataset3) 

# Identify frequency and time domain variables using the first character of column name
colnames4 <- gsub("^f", "Frequency", colnames4) 
colnames4 <- gsub("^t", "Time", colnames4)

# Make mean and standard dev more readable by converting from function format
colnames4 <- gsub("mean\\(\\)", "Mean", colnames4)
colnames4 <- gsub("std\\(\\)", "StandardDev", colnames4)

# Expand abbreviation of accelerometer and gyroscope
colnames4 <- gsub("Acc", "Accelerometer", colnames4)
colnames4 <- gsub("Gyro", "Gyroscope", colnames4)

# Other clean up
colnames4 <- gsub("BodyBody", "Body", colnames4)
colnames4 <- gsub("Mag", "Magnitude", colnames4)

dataset4 <- dataset3 
colnames(dataset4) <- colnames4
str(dataset4)

##########################################################################################
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#     average of each variable for each activity and each subject

dataset5 <- aggregate(.~ SubjectID + Activity + Label, 
                      dataset4,
                      mean)
write.table(dataset5, file = "tidydataset.txt", row.name = FALSE)

