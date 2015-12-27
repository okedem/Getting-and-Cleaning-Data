#Code Book / Getting and Cleaning Data Course Project

See Readme.md file for details about the source of the data and the processing steps.

Variable names:
* activity - the type of activity being done, Standing, Sitting, Laying, Walking, Walking_Downstairs, Walking_Upstairs
* subject - index of the volunteer doing the activity, 1 to 30
* All other variables are the (measured and calculated) signals from the cellphone sensors, while said subject was performing the activity. The variable names follow a simple condensed form, composed of five parts. 

For example, "tBodyAcc-mean()-X":

"t" - time domain signals; or

"f" - frequency domain (FFT - fast fourier transform) signals.

"Body" - the signals are separated to "body" and "gravity" signals

"Acc" - linear accelaration signals; or angular velocity, "GyroJerk"

"mean()" - all of the signals in the processed set are means or standard deviations ("std()")

"X" - the vector's direction, can also be "Y" or "Z"; or the absolute magnitude of the vector, "Mag".

This condensed form is easier to read than names composed of multiple words, and is ultimately more usable.
