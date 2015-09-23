#read results for test group 
x_test <- read.table(file = "./test/X_test.txt", 
                     stringsAsFactors = FALSE
                     ) 

#merge with information about subjects from test group
x_test_subject <- read.table("./test/subject_test.txt", 
                             col.names = c("subject"), 
                             stringsAsFactors = FALSE
                             )
x_test$subject <- x_test_subject$subject

#merge with information about activities
y_test <- read.table("./test/y_test.txt", 
                     col.names = c("activityid"), 
                     stringsAsFactors = FALSE
                     )
x_test$activityid <- y_test$activityid

#read results for test group 
x_train <- read.table(file = "./train/X_train.txt", 
                      stringsAsFactors = FALSE
                      ) 

#merge with information about subjects from train group
x_train_subject <- read.table("./train/subject_train.txt", 
                              col.names = c("subject"), 
                              stringsAsFactors = FALSE
                              )
x_train$subject <- x_train_subject$subject

#merge with information about activities
y_train <- read.table("./train/y_train.txt", 
                      col.names = c("activityid"), 
                      stringsAsFactors = FALSE
                      )
x_train$activityid <- y_train$activityid

#-------------------------------------------------------------------------------
##create a dictionary for groups of subjects and output to a file
#union subjects from "test" and "train" observation
subjects <- bind_rows("test"=x_test_subject, 
                      "train"=x_train_subject, 
                      .id="groups"
                      )

#select unique combination subject-group
subjects <- subjects %>% 
    select(subject, groups) %>%
    unique %>%
    arrange(subject, groups)

#output to file
write.table(subjects,file="subjects_groups.txt", row.names = FALSE)
#-------------------------------------------------------------------------------

#union all results for test and train groups 
#already complimented with subjects and activities 
df <- bind_rows(x_test, x_train)

#read column names from the specific file
features <- read.table("./features.txt", 
                       col.names = c("featureid","featurename"), 
                       stringsAsFactors = FALSE
                       )

#select only rows with column names contain substrings mean() and std()
col_sel <- combine(
    grep("mean()",features$featurename, fixed=TRUE), 
    grep("std()",features$featurename, fixed=TRUE)
    )

#copy only filtered columns into a separate dataframe. 
#Column names are still by default, i.e. V1, V2, ... 
df_sel <- df[, col_sel]

#try make column names more readable
t <- features$featurename[col_sel]
#step by step
t <- gsub("Acc","Acceleration", t)
t <- gsub("Gyro","Gyroscope", t)
t <- gsub("BodyBody","Body", t)
t <- gsub("Mag","Magnitude", t)
t <- gsub("^t","time", t)
t <- gsub("^f","freq", t)
t <- gsub("-","", t)
t <- gsub("()","", fixed=TRUE, t)
t <- gsub("std","Stddev", t)
t <- gsub("mean","Mean", t)



#Now that we have adjusted column names we can replace our default column names
colnames(df_sel) <- t

#do not forget to append two last columns from the original dataframe
df_sel$subject = df$subject
df_sel$activityid = df$activityid

#provide descriptive activity names
activities <- read.table("./activity_labels.txt", 
                         col.names = c("activityid","activity"), 
                         stringsAsFactors = FALSE
                         )
df_sel <- df_sel %>% 
    merge(activities, by = "activityid", sort=FALSE) %>% 
    select(-1)

#create a tidy data set by 
# 1) gathering all variables, except two of them, in one column 
# 2) calculating mean for each variable, activity and subject
# 3) sperading back variables per separate columns
df_tidy <- df_sel %>%    
    gather(varname, varvalue, -activity, -subject) %>% 
    group_by(varname, activity, subject) %>%
    summarize(average = mean(varvalue)) %>%
    spread(varname, average)

#output to file
write.table(df_tidy, file="gcd_project_tidy_dataset.txt", row.names = FALSE)
