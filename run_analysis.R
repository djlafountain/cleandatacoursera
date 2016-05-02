library(dplyr)


## The following reads the training and test data sets, along with subject IDs
## and activities.

testid <- read.table("subject_test.txt") 
testid <- as.numeric(testid$V1)
trainid <- read.table("subject_train.txt")
trainid <- as.numeric(trainid$V1)
testactivity <- read.table("y_test.txt")
testactivity <- as.numeric(testactivity$V1)
trainactivity <- read.table("y_train.txt")
trainactivity <- as.numeric(trainactivity$V1)
test <- read.table("X_test.txt")
train <- read.table("X_train.txt")

## The following adds subject IDs and activities to "test" and "train".

test$id <- testid
test$activity <- testactivity
train$id <- trainid
train$activity <- trainactivity

## The following merges test and train, with IDs and activities, into
## a new data frame called "merged".

merged <- rbind(test, train)

## The following reads the names of each variable, selects those measuring means
## or standard deviations, and removes unnecessary characters from each name.

features <- read.table("features.txt")
variables <- features$V2
meanstdnums <- grep("mean\\(|std\\(", variables)
meanstdnames <- grep("mean\\(|std\\(", variables, value = TRUE)
meanstdnames <- gsub("-","",meanstdnames) 
meanstdnames <- gsub("\\(\\)","", meanstdnames)
meanstdnames <- gsub("mean","Mean", meanstdnames)
meanstdnames <- gsub("std","Std", meanstdnames)
meanstdnums <- c(meanstdnums,562,563)
varnames <- c(meanstdnames,"id","activity")

## The following selects the mean and std columns from the merged data set
## to form a new data set "meanstd" with the column names now the 
## variable names.

meanstd <- merged[,meanstdnums]
colnames(meanstd) <- varnames

## The following names the activities in the data set with descriptive names.

x <- meanstd$activity

for(i in seq_along(x)){
        
        if(x[i]==1){x[i] <- "walk"}
        else if(x[i]==2){x[i] <- "walk up"}
        else if(x[i]==3){x[i] <- "walk down"}
        else if(x[i]==4){x[i] <- "sit"}
        else if(x[i]==5){x[i] <- "stand"}
        else if(x[i]==6){x[i] <- "lie"}
}

meanstd$activity <- as.factor(x)
y <- as.factor(meanstd$id)
meanstd$id <- y

## The following creates a new independent data frame, "averages" with the
## average of each variable for each activity and each subject.

averages <- meanstd %>% group_by(id, activity) %>% summarize_each(funs(mean))

## The following writes "averages" to a text file.

write.table(averages, "./averages.txt", row.name=FALSE)
