# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

! [Linear_Regression_Summary](Linear_Regression_Summary.png)

Vehicle length and ground clearance were both highly likely to provide a non random amount of variance to the mpg values in this dataset, with much lower p-values than vehicle wieght, spoiler angle, and AWD (All Wheel Drive). Since the most significant coefficients were positive, the slope of the linear model can be considered to be positive. This model predicts the MechaCar prototypes fairly effectively based on the r-value (0.71) and small p-value (0.0000000000535).

## Summary Statistics on Suspension Coils

Considering the vsuspension coil variance limit of 100 pounds per square inch, the current manufacturing data do meet this design specification, with a variance of 62.3 pounds per square inch:
! [Total_Summary](Total_Summary.png)
However, the data by lot number indicates that whole Lots 1 and 2 are well under this limit, lot 3 accounts for a disproportionate amount of the total variance with a variance of 170.3 pounds per square inch: 
! [Lot_Summary](Lot_Summary.png)

## T-Tests on Suspension Coils

Th overall p-value for the PSI t-tests was 0.06, slightly over a 0.05 standard of significance, narrowly rejecting the null hypothesis. The p-value for Lot 2 and Lot 3 were 0.06 and 0.04, just above and below the significance level, respectively. However, the Lot 1 p-value = 1.
! [ttests](ttest.png)

## Study Design: MechaCar vs Competition

City and highway fuel efficiency may be relevant metric for comparing the MechaCar to its competition, with null hypothesis being that there is no difference between the mean miles/gallon for each brand of vehicle, other than by chance. A two sample t-test would compare the mean miles/gallon of the mechacar and competitors. Data for many individual cars of each type would be required in order to compute distribution statistics within the t-test. 

