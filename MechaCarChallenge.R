library(dplyr)
options(scipen = 100)
# Deliverable 1
# import MechaCar_mpg table
mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
# multiple linear regression + summary
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_table)
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data = mecha_table))

# Deliverable 2
# import Suspension-Coil data set
coil_table <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors = F)
# summary table 
total_summary = coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary = coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3
t.test(coil_table$PSI, mu=1500)
t.test(subset(coil_table, coil_table$Manufacturing_Lot=="Lot1")$PSI, mu=1500)
t.test(subset(coil_table, coil_table$Manufacturing_Lot=="Lot2")$PSI, mu=1500)
t.test(subset(coil_table, coil_table$Manufacturing_Lot=="Lot3")$PSI, mu=1500)


