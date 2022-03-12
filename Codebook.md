# CODEBOOK

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded 
accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded 
to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data 
and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% 
overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter 
into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Dimensions:
1. SubjectID - Identifier of the experiment volunteer (Integer: 1-30)
2. Activity - Activity performed by each person while wearing the smartphone. This could be: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING (String)
3. Label - Identifier of "Activity" dimension (Integer: 1-6)

## Metrics (datatype: double): 
- The average of trials with respect to subject and activity. The metrics can be of time or frequency indicated in the beginning of the name.
- The variable name can indicate if the measure was measured by what specific sensor signal (accelerometer / gyroscope)
- Some variables can be representative of X,Y,Z only indicated after mean/std. These are the 3-axial values captured by the sensor signals.
- The metrics can either be mean or standard deviation of the described variable indicated at the end of the name.
1. TimeBodyAccelerometer-Mean-X,Y,Z 
2. TimeBodyAccelerometer-StandardDev-X,Y,Z 
3. TimeGravityAccelerometer-Mean-X,Y,Z                                 
4. TimeGravityAccelerometer-StandardDev-X,Y,Z
5. TimeBodyAccelerometerJerk-Mean-X,Y,Z                   
6. TimeBodyAccelerometerJerk-StandardDev-X,Y,Z          
7. TimeBodyGyroscope-Mean-X,Y,Z                         
8. TimeBodyGyroscope-StandardDev-X,Y,Z                     
9. TimeBodyGyroscopeJerk-Mean-X,Y,Z                  
10. TimeBodyGyroscopeJerk-StandardDev-X,Y,Z
11. TimeBodyAccelerometerMagnitude-Mean                
12. TimeBodyAccelerometerMagnitude-StandardDev          
13. TimeGravityAccelerometerMagnitude-Mean             
14. TimeGravityAccelerometerMagnitude-StandardDev       
15. TimeBodyAccelerometerJerkMagnitude-Mean            
16. TimeBodyAccelerometerJerkMagnitude-StandardDev      
17. TimeBodyGyroscopeMagnitude-Mean                    
18. TimeBodyGyroscopeMagnitude-StandardDev              
19. TimeBodyGyroscopeJerkMagnitude-Mean                
20. TimeBodyGyroscopeJerkMagnitude-StandardDev          
21. FrequencyBodyAccelerometer-Mean-X,Y,Z                
22. FrequencyBodyAccelerometer-StandardDev-X,Y,Z           
23. FrequencyBodyAccelerometerJerk-Mean-X,Y,Z
24. FrequencyBodyAccelerometerJerk-StandardDev-X,Y,Z        
25. FrequencyBodyGyroscope-Mean-X,Y,Z                
26. FrequencyBodyGyroscope-StandardDev-X,Y,Z             
27. FrequencyBodyAccelerometerMagnitude-Mean           
28. FrequencyBodyAccelerometerMagnitude-StandardDev     
29. FrequencyBodyAccelerometerJerkMagnitude-Mean       
30. FrequencyBodyAccelerometerJerkMagnitude-StandardDev 
31. FrequencyBodyGyroscopeMagnitude-Mean               
32. FrequencyBodyGyroscopeMagnitude-StandardDev         
33. FrequencyBodyGyroscopeJerkMagnitude-Mean           
34. FrequencyBodyGyroscopeJerkMagnitude-StandardDev
