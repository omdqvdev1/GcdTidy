###Feature Selection 


The features selected for the data sets come from the accelerometer and gyroscope 3-axial raw signals timeAccelerationXYZ and timeGyroscopeXYZ. These time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerationXYZ and timeGravityAccelerationXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Acceleration signal is measured in standard gravity units 'g'.
Gyroscope signal is measured in radians/second.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals

- timeBodyAccelerationJerkXYZ  
- timeBodyGyroscopeJerkXYZ
 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm 

- timeBodyAccelerationMagnitude 
- timeGravityAccelerationMagnitude 
- timeBodyAccelerationJerkMagnitude 
- timeBodyGyroscopeMagnitude 
- timeBodyGyroscopeJerkMagnitude
 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 

- freqBodyAccelerationXYZ
- freqBodyAccelerationJerkXYZ
- freqBodyGyroscopeXYZ
- freqBodyAccelerationMagnitude
- freqBodyAccelerationJerkMagnitude
- freqBodyGyroscopeMagnitude 
- freqBodyGyroscopeJerkMagnitude

(Note the prefix 'freq' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
suffix 'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- timeBodyAccelerationXYZ
- timeGravityAccelerationXYZ
- timeBodyAccelerationJerkXYZ
- timeBodyGyroscopeXYZ
- timeBodyGyroscopeJerkXYZ
- timeBodyAccelerationMagnitude
- timeGravityAccelerationMagnitude
- timeBodyAccelerationJerkMagnitude
- timeBodyGyroscopeMagnitude
- timeBodyGyroscopeJerkMagnitude
- freqBodyAccelerationXYZ
- freqBodyAccelerationJerkXYZ
- freqBodyGyroscopeXYZ
- freqBodyAccelerationMagnitude
- freqBodyAccelerationJerkMagnitude
- freqBodyGyroscopeMagnitude
- freqBodyGyroscopeJerkMagnitude

###Notes: 

- Features are normalized and bounded within [-1,1].


###Additional transformations:

The set of variables that were estimated from these signals are: 

- *Mean*: Mean value
- *Stddev*: Standard deviation

The complete list(used for this project) of variables of each feature vector is below.
Each feature vector is a row on the text file.

- timeBodyAccelerationMeanX
- timeBodyAccelerationMeanY
- timeBodyAccelerationMeanZ
- timeGravityAccelerationMeanX
- timeGravityAccelerationMeanY
- timeGravityAccelerationMeanZ
- timeBodyAccelerationJerkMeanX
- timeBodyAccelerationJerkMeanY
- timeBodyAccelerationJerkMeanZ
- timeBodyGyroscopeMeanX
- timeBodyGyroscopeMeanY
- timeBodyGyroscopeMeanZ
- timeBodyGyroscopeJerkMeanX
- timeBodyGyroscopeJerkMeanY
- timeBodyGyroscopeJerkMeanZ
- timeBodyAccelerationMagnitudeMean
- timeGravityAccelerationMagnitudeMean
- timeBodyAccelerationJerkMagnitudeMean
- timeBodyGyroscopeMagnitudeMean
- timeBodyGyroscopeJerkMagnitudeMean
- freqBodyAccelerationMeanX
- freqBodyAccelerationMeanY
- freqBodyAccelerationMeanZ
- freqBodyAccelerationJerkMeanX
- freqBodyAccelerationJerkMeanY
- freqBodyAccelerationJerkMeanZ
- freqBodyGyroscopeMeanX
- freqBodyGyroscopeMeanY
- freqBodyGyroscopeMeanZ
- freqBodyAccelerationMagnitudeMean
- freqBodyAccelerationJerkMagnitudeMean
- freqBodyGyroscopeMagnitudeMean
- freqBodyGyroscopeJerkMagnitudeMean
- timeBodyAccelerationStddevX
- timeBodyAccelerationStddevY
- timeBodyAccelerationStddevZ
- timeGravityAccelerationStddevX
- timeGravityAccelerationStddevY
- timeGravityAccelerationStddevZ
- timeBodyAccelerationJerkStddevX
- timeBodyAccelerationJerkStddevY
- timeBodyAccelerationJerkStddevZ
- timeBodyGyroscopeStddevX
- timeBodyGyroscopeStddevY
- timeBodyGyroscopeStddevZ
- timeBodyGyroscopeJerkStddevX
- timeBodyGyroscopeJerkStddevY
- timeBodyGyroscopeJerkStddevZ
- timeBodyAccelerationMagnitudeStddev
- timeGravityAccelerationMagnitudeStddev
- timeBodyAccelerationJerkMagnitudeStddev
- timeBodyGyroscopeMagnitudeStddev
- timeBodyGyroscopeJerkMagnitudeStddev
- freqBodyAccelerationStddevX
- freqBodyAccelerationStddevY
- freqBodyAccelerationStddevZ
- freqBodyAccelerationJerkStddevX
- freqBodyAccelerationJerkStddevY
- freqBodyAccelerationJerkStddevZ
- freqBodyGyroscopeStddevX
- freqBodyGyroscopeStddevY
- freqBodyGyroscopeStddevZ
- freqBodyAccelerationMagnitudeStddev
- freqBodyAccelerationJerkMagnitudeStddev
- freqBodyGyroscopeMagnitudeStddev
- freqBodyGyroscopeJerkMagnitudeStddev



For more information about the data sets contact: activityrecognition@smartlab.ws

###Reference

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
