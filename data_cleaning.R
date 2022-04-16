# Import dataset 

Evolution <- read_csv("~/Documents/Evolution Internship/Analyses/Evolutionary mismatch.csv")

# Create dataset with only mismatches an depression variables
Evolution1 <- Evolution %>%
  select(Q2:Q96)
View(Evolution1)

#Cut first 2 rows to just have values
Evolution2 <- Evolution1[-1:-2,]
  
# Turn values numeric
Evolution3 <- data.frame(apply(Evolution2, 2, function(x) as.numeric(as.character(x))))

# Create mismatch sum scores
Evolution3$sleep <- rowSums(Evolution3[,c("Q2", "Q3","Q4","Q5","Q6")], na.rm=TRUE)
Evolution3$exercise <- rowSums(Evolution3[,c("Q7", "Q8","Q9","Q10","Q11")], na.rm=TRUE)
Evolution3$diet <- rowSums(Evolution3[,c("Q12", "Q13","Q14","Q15","Q16")], na.rm=TRUE)
Evolution3$unhealthy <- rowSums(Evolution3[,c("Q17", "Q18","Q19","Q20","Q21")], na.rm=TRUE)
Evolution3$medication <- rowSums(Evolution3[,c("Q22", "Q24","Q25","Q26","Q27")], na.rm=TRUE)#No Q23
Evolution3$health <- rowSums(Evolution3[,c("Q28", "Q30","Q31","Q32","Q33")], na.rm=TRUE) #No Q29
Evolution3$nature <- rowSums(Evolution3[,c("Q34", "Q35","Q36","Q37","Q38")], na.rm=TRUE)
Evolution3$joy <- rowSums(Evolution3[,c("Q39", "Q40","Q41","Q42","Q43")], na.rm=TRUE)
Evolution3$worrying <- rowSums(Evolution3[,c("Q44", "Q45","Q46","Q47","Q48")], na.rm=TRUE)
Evolution3$childhood <- rowSums(Evolution3[,c("Q49", "Q50","Q51","Q52","Q53")], na.rm=TRUE)
Evolution3$freedom <- rowSums(Evolution3[,c("Q54", "Q55","Q56","Q57","Q58")], na.rm=TRUE)
Evolution3$time <- rowSums(Evolution3[,c("Q59", "Q60","Q61","Q62","Q63")], na.rm=TRUE)
Evolution3$social <- rowSums(Evolution3[,c("Q64", "Q65","Q66","Q67","Q68")], na.rm=TRUE)
Evolution3$materialism <- rowSums(Evolution3[,c("Q69", "Q70","Q71","Q72")], na.rm=TRUE) #One question missing
Evolution3$perfectionism <- rowSums(Evolution3[,c("Q73", "Q74","Q75","Q76","Q77")], na.rm=TRUE)
Evolution3$individualism <- rowSums(Evolution3[,c("Q78", "Q79","Q80","Q81","Q82")], na.rm=TRUE)
Evolution3$socialmedia <- rowSums(Evolution3[,c("Q83", "Q84","Q85","Q86","Q87")], na.rm=TRUE)

#Create dataframe with only mismacth sum scores and depression scores
Evolution4 <- Evolution3 %>%
  select(Q88:Q96,sleep:socialmedia)
# Rename depression variables
