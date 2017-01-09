require(reshape2)

## Initialize directory

# setwd("set working directory")

if(!file.exists('./data-zip')){dir.create('./data-zip')}
if(!file.exists('./data')){dir.create('./data')}

if(!file.exists('./data-zip/proj-files.zip')){
        fileUrl <- 'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
        download.file(fileUrl, destfile = './data-zip/proj-files.zip')
        unzip(zipfile = './data-zip/proj-files.zip',
                exdir = './data')
        }

# Get features

feature.source <- read.table('./data/UCI HAR Dataset/features.txt')

# Get only those features that contain mean and standard deviation

feature.index <- grep("mean\\()|std\\()", feature.source[,2])
feature.labels <- grep("mean\\()|std\\()", feature.source[,2], value = TRUE)

# Transform feature names - descriptive, compact, readability

feature.labels <- gsub("mean", "Mean", feature.labels)
feature.labels <- gsub("std", "Std", feature.labels)
feature.labels <- gsub("^t", "time", feature.labels)
feature.labels <- gsub("^f", "frequency", feature.labels)
feature.labels <- gsub("[-(),]","",feature.labels)

# get activitie labels

activity.labels <- read.table('./data/UCI HAR Dataset/activity_labels.txt')

# get test data

test <- read.table('./data/UCI HAR Dataset/test/X_test.txt')[feature.index]
test.subjects <- read.table('./data/UCI HAR Dataset/test/subject_test.txt')
test.labels <- read.table('./data/UCI HAR Dataset/test/Y_test.txt')

# get train data

train <- read.table('./data/UCI HAR Dataset/train/X_train.txt')[feature.index]
train.subjects <- read.table('./data/UCI HAR Dataset/train/subject_train.txt')
train.labels <- read.table('./data/UCI HAR Dataset/train/Y_train.txt')

# bind test and train data

test <- cbind(test.subjects, test.labels, test)
train <- cbind(train.subjects, train.labels, train)
data.combined <- rbind(test, train)

# trasnform names of features

names(data.combined) <- c("subject","activity", feature.labels)

# transform character values

data.combined$activity <- factor(data.combined$activity, 
                                   levels = activity.labels[,1], 
                                   labels = activity.labels[,2])

# transform data - get mean by subject and activity

data.melt <- melt(data.combined, measure.vars =  feature.labels)

data.mean <- dcast(data.melt, subject + activity ~ variable, mean)

write.table(data.mean, 
            file = "tidy.txt", 
            row.names = FALSE, 
            quote = FALSE,
            sep = "\t")


