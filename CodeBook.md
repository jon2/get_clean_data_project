# Code Book

## subject
The first column is the subject number.  This identifies the unique subject(person). Range: 1-30.

## activity
The second column is the activity name. Values:
-WALKING
-WALKING_UPSTAIRS
-WALKING_DOWNSTAIRS
-SITTING
-STANDING
-LAYING

## Average Values
The remaining columns contain the average of all measurements for a given subject/activity combination.  Measurements in the original dataset were normalized and between -1 and +1, so the averages are also between -1 and +1.

In the following list of variables:  
*'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
*'.mean.' denotes that this value is the mean of the mean of the measurements
*'.std.' denotes that this value is the mean of the standard deviation of the measurements

A full description of the measurements may be found in the original dataset's features_info.txt file.

*MeantBodyAcc.mean.X          
*MeantBodyAcc.mean.Y
*MeantBodyAcc.mean.Z
*MeantBodyAcc.std.X           
*MeantBodyAcc.std.Y
*MeantBodyAcc.std.Z            
*MeantGravityAcc.mean.X       
 *MeantGravityAcc.mean.Y        
 *MeantGravityAcc.mean.Z        
 *MeantGravityAcc.std.X        
 *MeantGravityAcc.std.Y         
 *MeantGravityAcc.std.Z        
 *MeantBodyAccJerk.mean.X      
 *MeantBodyAccJerk.mean.Y       
 *MeantBodyAccJerk.mean.Z       
 *MeantBodyAccJerk.std.X       
 *MeantBodyAccJerk.std.Y       
  *MeantBodyAccJerk.std.Z        
  *MeantBodyGyro.mean.X         
 *MeantBodyGyro.mean.Y          
 *MeantBodyGyro.mean.Z          
 *MeantBodyGyro.std.X          
 *MeantBodyGyro.std.Y           
 *MeantBodyGyro.std.Z           
 *MeantBodyGyroJerk.mean.X     
 *MeantBodyGyroJerk.mean.Y      
 *MeantBodyGyroJerk.mean.Z      
 *MeantBodyGyroJerk.std.X      
 *MeantBodyGyroJerk.std.Y       
 *MeantBodyGyroJerk.std.Z       
 *MeantBodyAccMag.mean         
 *MeantBodyAccMag.std           
 *MeantGravityAccMag.mean       
 *MeantGravityAccMag.std       
 *MeantBodyAccJerkMag.mean      
 *MeantBodyAccJerkMag.std       
 *MeantBodyGyroMag.mean        
 *MeantBodyGyroMag.std          
 *MeantBodyGyroJerkMag.mean     
 *MeantBodyGyroJerkMag.std     
 *MeanfBodyAcc.mean.X           
 *MeanfBodyAcc.mean.Y           
 *MeanfBodyAcc.mean.Z          
 *MeanfBodyAcc.std.X            
 *MeanfBodyAcc.std.Y            
 *MeanfBodyAcc.std.Z           
 *MeanfBodyAccJerk.mean.X       
 *MeanfBodyAccJerk.mean.Y       
 *MeanfBodyAccJerk.mean.Z      
 *MeanfBodyAccJerk.std.X        
 *MeanfBodyAccJerk.std.Y        
 *MeanfBodyAccJerk.std.Z       
 *MeanfBodyGyro.mean.X          
 *MeanfBodyGyro.mean.Y          
 *MeanfBodyGyro.mean.Z         
 *MeanfBodyGyro.std.X           
 *MeanfBodyGyro.std.Y           
 *MeanfBodyGyro.std.Z          
 *MeanfBodyAccMag.mean          
 *MeanfBodyAccMag.std           
 *MeanfBodyBodyAccJerkMag.mean
 *MeanfBodyBodyAccJerkMag.std   
*MeanfBodyBodyGyroMag.mean     
*MeanfBodyBodyGyroMag.std     
 *MeanfBodyBodyGyroJerkMag.mean
 *MeanfBodyBodyGyroJerkMag.std
