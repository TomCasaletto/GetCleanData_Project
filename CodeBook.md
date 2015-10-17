# CodeBook for GetCleanData_Project

## Subjects
In this study, the subjects were numbered 1 through 30.

## Activity
The following activities were monitored:
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

## Measurement means
The following measurements were averaged for each subject, for each activity:

> colnames(tidyData)
 [1] "dfMeanStd$Subject"               "dfMeanStd$Activity"             
 [3] "tBodyAcc.mean...X"               "tBodyAcc.mean...Y"              
 [5] "tBodyAcc.mean...Z"               "tGravityAcc.mean...X"           
 [7] "tGravityAcc.mean...Y"            "tGravityAcc.mean...Z"           
 [9] "tBodyAccJerk.mean...X"           "tBodyAccJerk.mean...Y"          
[11] "tBodyAccJerk.mean...Z"           "tBodyGyro.mean...X"             
[13] "tBodyGyro.mean...Y"              "tBodyGyro.mean...Z"             
[15] "tBodyGyroJerk.mean...X"          "tBodyGyroJerk.mean...Y"         
[17] "tBodyGyroJerk.mean...Z"          "tBodyAccMag.mean.."             
[19] "tGravityAccMag.mean.."           "tBodyAccJerkMag.mean.."         
[21] "tBodyGyroMag.mean.."             "tBodyGyroJerkMag.mean.."        
[23] "fBodyAcc.mean...X"               "fBodyAcc.mean...Y"              
[25] "fBodyAcc.mean...Z"               "fBodyAcc.meanFreq...X"          
[27] "fBodyAcc.meanFreq...Y"           "fBodyAcc.meanFreq...Z"          
[29] "fBodyAccJerk.mean...X"           "fBodyAccJerk.mean...Y"          
[31] "fBodyAccJerk.mean...Z"           "fBodyAccJerk.meanFreq...X"      
[33] "fBodyAccJerk.meanFreq...Y"       "fBodyAccJerk.meanFreq...Z"      
[35] "fBodyGyro.mean...X"              "fBodyGyro.mean...Y"             
[37] "fBodyGyro.mean...Z"              "fBodyGyro.meanFreq...X"         
[39] "fBodyGyro.meanFreq...Y"          "fBodyGyro.meanFreq...Z"         
[41] "fBodyAccMag.mean.."              "fBodyAccMag.meanFreq.."         
[43] "fBodyBodyAccJerkMag.mean.."      "fBodyBodyAccJerkMag.meanFreq.." 
[45] "fBodyBodyGyroMag.mean.."         "fBodyBodyGyroMag.meanFreq.."    
[47] "fBodyBodyGyroJerkMag.mean.."     "fBodyBodyGyroJerkMag.meanFreq.."
[49] "tBodyAcc.std...X"                "tBodyAcc.std...Y"               
[51] "tBodyAcc.std...Z"                "tGravityAcc.std...X"            
[53] "tGravityAcc.std...Y"             "tGravityAcc.std...Z"            
[55] "tBodyAccJerk.std...X"            "tBodyAccJerk.std...Y"           
[57] "tBodyAccJerk.std...Z"            "tBodyGyro.std...X"              
[59] "tBodyGyro.std...Y"               "tBodyGyro.std...Z"              
[61] "tBodyGyroJerk.std...X"           "tBodyGyroJerk.std...Y"          
[63] "tBodyGyroJerk.std...Z"           "tBodyAccMag.std.."              
[65] "tGravityAccMag.std.."            "tBodyAccJerkMag.std.."          
[67] "tBodyGyroMag.std.."              "tBodyGyroJerkMag.std.."         
[69] "fBodyAcc.std...X"                "fBodyAcc.std...Y"               
[71] "fBodyAcc.std...Z"                "fBodyAccJerk.std...X"           
[73] "fBodyAccJerk.std...Y"            "fBodyAccJerk.std...Z"           
[75] "fBodyGyro.std...X"               "fBodyGyro.std...Y"              
[77] "fBodyGyro.std...Z"               "fBodyAccMag.std.."              
[79] "fBodyBodyAccJerkMag.std.."       "fBodyBodyGyroMag.std.."         
[81] "fBodyBodyGyroJerkMag.std.."     
> 
