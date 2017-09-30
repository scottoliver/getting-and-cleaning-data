# Code book for *Getting and Cleaning Data*

This data set corresponds to "tidydataset.txt" in the same folder

`README.md` pertains to the function used to create "tidydataset.txt"

The structure of the data set is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were carried out to obtain the data set based on the source data are presented in the [Transformations](#transformations) section.

## Data <a name="data"></a>

`tidydataset.txt` is a text file containing space-separated values.

The first row consists of variable names listed and described in the [Variables](#variables) section, and all other rows contain the values of these variables. 

## Variables <a name="variables"></a>

Each row contains, for a given subject and activity, 86 averaged signal measurements.

### Identifiers <a name="identifiers"></a>

- `subject`

	Identifies the subject, integer from 1 to 30.

- `activity`

	String with 6 possible values: 
	- `WALKING`: subject was walking
	- `WALKING_UPSTAIRS`: subject was walking upstairs
	- `WALKING_DOWNSTAIRS`: subject was walking downstairs
	- `SITTING`: subject was sitting
	- `STANDING`: subject was standing
	- `LAYING`: subject was laying

### Average of measurements <a name="average-measurements"></a>

All measurements are floating-point values, normalised and bounded within [-1,1].

Prior to normalisation, acceleration measurements (variables containing `Accelerometer`) were made in *g*'s (9.81 m.s⁻²) and gyroscope measurements (variables containing `Gyroscope`) were made in radians per second (rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing `Magnitude`) were calculated using the Euclidean norm.

The measurements are classified in two domains:

- Time-domain signals from the capture of accelerometer and gyroscope raw signals.

- Frequency-domain signals from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

#### Time-domain signals

- Average time-domain body acceleration in the X, Y and Z directions:

	- `tBodyAccmeanX`
	- `tBodyAccmeanY`
	- `tBodyAccmeanZ`

- Standard deviation of the time-domain body acceleration in the X, Y and Z directions:

	- `tBodyAccstdX`
	- `tBodyAccstdY`
	- `tBodyAccstdZ`

- Average time-domain gravity acceleration in the X, Y and Z directions:

	- `tGravityAccmeanX`
	- `tGravityAccmeanY`
	- `tGravityAccmeanZ`

- Standard deviation of the time-domain gravity acceleration in the X, Y and Z directions:

	- `tGravityAccstdX`
	- `tGravityAccstdY`
	- `tGravityAccstdZ`

- Average time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `tBodyAccJerkmeanX`
	- `tBodyAccJerkmeanY`
	- `tBodyAccJerkmeanZ`

- Standard deviation of the time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `tBodyAccJerkstdX`
	- `tBodyAccJerkstdY`
	- `tBodyAccJerkstdZ`

- Average time-domain body angular velocity in the X, Y and Z directions:

	- `tBodyGyromeanX`
	- `tBodyGyromeanY`
	- `tBodyGyromeanZ`

- Standard deviation of the time-domain body angular velocity in the X, Y and Z directions:

	- `tBodyGyrostdX`
	- `tBodyGyrostdY`
	- `tBodyGyrostdZ`

- Average time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `tBodyGyroJerkmeanX`
	- `tBodyGyroJerkmeanY`
	- `tBodyGyroJerkmeanZ`

- Standard deviation of the time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- `tBodyGyroJerkstdX`
	- `tBodyGyroJerkstdY`
	- `tBodyGyroJerkstdZ`

- Average and standard deviation of the time-domain magnitude of body acceleration:

	- `tBodyAccMagmean`
	- `tBodyAccMagstd`

- Average and standard deviation of the time-domain magnitude of gravity acceleration:

	- `tGravityAccMagmean`
	- `tGravityAccMagstd`

- Average and standard deviation of the time-domain magnitude of body acceleration jerk:

	- `tBodyAccJerkMagmean`
	- `tBodyAccJerkMagstd`

- Average and standard deviation of the time-domain magnitude of body angular velocity:

	- `tBodyGyroMagmean`
	- `tBodyGyroMagstd`

- Average and standard deviation of the time-domain magnitude of body angular velocity jerk:

	- `tBodyGyroJerkMagmean`
	- `tBodyGyroJerkMagstd`

#### Frequency-domain signals

- Average frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAccmeanX`
	- `fBodyAccmeanY`
	- `fBodyAccmeanZ`

- Standard deviation of the frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAccstdX`
	- `fBodyAccstdY`
	- `fBodyAccstdZ`

- Weighted average of the frequency components of the frequency-domain body acceleration in the X, Y and Z directions:

	- `fBodyAccmeanFreqX`
	- `fBodyAccmeanFreqY`
	- `fBodyAccmeanFreqZ`

- Average frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerkmeanX`
	- `fBodyAccJerkmeanY`
	- `fBodyAccJerkmeanZ`

- Standard deviation of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerkstdX`
	- `fBodyAccJerkstdY`
	- `fBodyAccJerkstdZ`

- Weighted average of the frequency components of the frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- `fBodyAccJerkmeanFreqX`
	- `fBodyAccJerkmeanFreqY`
	- `fBodyAccJerkmeanFreqZ`

- Average frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyromeanX`
	- `fBodyGyromeanY`
	- `fBodyGyromeanZ`

- Standard deviation of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyrostdX`
	- `fBodyGyrostdY`
	- `fBodyGyrostdZ`

- Weighted average of the frequency components of the frequency-domain body angular velocity in the X, Y and Z directions:

	- `fBodyGyromeanFreqX`
	- `fBodyGyromeanFreqY`
	- `fBodyGyromeanFreqZ`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- `fBodyAccMagmean`
	- `fBodyAccMagstd`
	- `fBodyAccMagmeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk:

	- `fBodyBodyAccJerkMagmean`
	- `fBodyBodyAccJerkMagstd`
	- `fBodyBodyAccJerkMagmeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- `fBodyBodyGyroMagmean`
	- `fBodyBodyGyroMagstd`
	- `fBodyBodyGyroMagmeanFreq`

- Average, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk:

	- `fBodyBodyGyroJerkMagmean`
	- `fBodyBodyGyroJerkMagstd`
	- `fBodyBodyGyroJerkMagmeanFreq`
	
- Additional averages from angle vectors by averaging the signals in a signal window sample. 

        - `angletBodyAccMeangravity`
        - `angletBodyAccJerkMeangravityMean`
        - `angletBodyGyroMeangravityMean`
        - `angletBodyGyroJerkMeangravityMean`
        - `angleXgravityMean`
        - `angleYgravityMean`
        - `angleZgravityMean`

## Transformations <a name="transformations"></a>

Source data is located at [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The following transformations were applied to the source data:

1. The training and test sets were merged to create one data set.
1. The variable names for the features were merged into the data set and cleaned.
1. Mean and standard deviation measurements were extracted from the data set (features with "mean" or "std").
1. ID numbers for the activities were substituted with names (see [Identifiers](#identifiers) section).
1. A final data set was extracted with the averages for each variable for each subject and activity. This data set is `tidydataset.txt`

`run_analysis.R` performs the steps listed above. `README.md` contains additional information regarding the R script.