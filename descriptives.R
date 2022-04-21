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
