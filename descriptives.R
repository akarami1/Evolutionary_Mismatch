Evolution4 %>%
  count() # Sample size 1013

Evolution %>%
  filter(Q99 == 1) %>%
  count() # 504 male

Evolution %>%
  filter(Q99 == 2) %>%
  count() #486 female 

Evolution %>%
  filter(Q99 == 3) %>%
  count() #20 other

Evolution %>%
  filter(Q99 == 4) %>%
  count() # 3 prefer not to say

# Mean age 
mean(as.numeric(mismatch_descriptives_1$Q104)) #23.43
sd(as.numeric(mismatch_descriptives_1$Q104)) #3.02

# Wich country are they from

# There were some new responses on qualtrics but none of them finished the survey so I deleted them

mismatch_descriptives_1 <- mismatch_descriptives %>%
  filter(Progress == 100)



mismatch_descriptives_1 %>%
  filter(Q101 == "Portugal") %>%
  count() # 249 Portugal

mismatch_descriptives_1 %>%
  filter(Q101 == "Mexico") %>%
  count() #152 Mexico

mismatch_descriptives_1 %>%
  filter(Q101 == "Not listed") %>%
  count() #125 country not listed

mismatch_descriptives_1 %>%
  filter(Q101 == "Poland") %>%
  count() #135 Poland


# Psychiatric disorder

mismatch_descriptives_1 %>%
  filter(Q106 == "I do not have a psychiatric disorder") %>%
count() # 702 do not have a psychiatric disorder

mismatch_descriptives_1 %>%
  filter(Q106 == "anxiety disorder") %>%
  count() # 103 have anxiety disorder

mismatch_descriptives_1 %>%
  filter(Q106 == "depression") %>%
  count() # 78 have depression

mismatch_descriptives_1 %>%
  filter(Q106 == "AD(H)D") %>%
  count() # 33 ADHD

mismatch_descriptives_1 %>%
  filter(Q106 == "prefer not to say") %>%
  count() # 27 prefer not to say 


# Scores on depression variables and mismatches
mean(Evolution4$sleep) # sleep 17.03
mean(Evolution4$exercise) # exercise 18.29
mean(Evolution4$diet) #diet 13.13
mean(Evolution4$unhealthy) #unhealthy 6.94
mean(Evolution4$health) #health 10.48
mean(Evolution4$medication) #medication 6.62
mean(Evolution4$nature) #nature 16.19
mean(Evolution4$joy) #joy 14.22
mean(Evolution4$worrying) #worrying 16.48
mean(Evolution4$childhood) #childhood 13.98
mean(Evolution4$freedom) #freedom 13.02
mean(Evolution4$time) #time 16.98
mean(Evolution4$social) #social 12.71
mean(Evolution4$materialism) #materialism 11.81
mean(Evolution4$perfectionism) #perfectionism 19.27
mean(Evolution4$individualism) #individualism 15.93
mean(Evolution4$socialmedia) #socialmedia 16.24

mean(Evolution4$Q88) # Little interest or pleasure in doing things 1.23
mean(Evolution4$Q89) # Feeling down depressed or hopeless 1.19
mean(Evolution4$Q90) # Trouble falling or staying asleep or sleeping too much 1.38
mean(Evolution4$Q91) # Feeling tired or having little energy 1.64
mean(Evolution4$Q92) # Poor appetite or overeating 1.04
mean(Evolution4$Q93) # Feeling bad about yourself 1.30
mean(Evolution4$Q94) # Trouble concentrating on things 1.13
mean(Evolution4$Q95) # Moving or speaking so slowly that other people could have noticed - Or the opposite 0.47
mean(Evolution4$Q96) # Thoughts that you would be better off dead, or of hurting yourself in some way 0.55

