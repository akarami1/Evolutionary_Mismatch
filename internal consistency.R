#ltm package for cronbach.apha function
install.packages("ltm")
library(ltm)

#Create datframe with only mismatch scores
Evolution_mismatch <- Evolution3[1:84]

# Calculate cronbach's alpha for whole questionnaire
cronbach.alpha(Evolution_mismatch,na.rm = TRUE) #0.765

# Sleep
cronbach.alpha(Evolution_mismatch[1:5],na.rm = TRUE) #0.338

# Exercise
cronbach.alpha(Evolution_mismatch[6:10],na.rm = TRUE) #0.409

# Diet
cronbach.alpha(Evolution_mismatch[11:15],na.rm = TRUE) #0.562

# Unhealthy habits
cronbach.alpha(Evolution_mismatch[16:20],na.rm = TRUE) #0.486

# Medicine use
cronbach.alpha(Evolution_mismatch[21:25],na.rm = TRUE) #0.392

# Health
cronbach.alpha(Evolution_mismatch[26:30],na.rm = TRUE) #0.592

#nature
cronbach.alpha(Evolution_mismatch[31:35],na.rm = TRUE) #0.424

#Joy
cronbach.alpha(Evolution_mismatch[36:40],na.rm = TRUE) #0.599

#Worrying
cronbach.alpha(Evolution_mismatch[41:45],na.rm = TRUE) #0.681

# Childhood
cronbach.alpha(Evolution_mismatch[46:50],na.rm = TRUE) #0.18

#Freedom
cronbach.alpha(Evolution_mismatch[51:55],na.rm = TRUE) #0.745

#Time
cronbach.alpha(Evolution_mismatch[56:60],na.rm = TRUE) #0.663

#Social bonding
cronbach.alpha(Evolution_mismatch[61:65],na.rm = TRUE) #0.419

#Materialism
cronbach.alpha(Evolution_mismatch[66:69],na.rm = TRUE) #0.56

#Perfectionsim
cronbach.alpha(Evolution_mismatch[70:74],na.rm = TRUE) #0.584

#Individualism
cronbach.alpha(Evolution_mismatch[75:79],na.rm = TRUE) #0.361

#Social media
cronbach.alpha(Evolution_mismatch[80:84],na.rm = TRUE) #0.848