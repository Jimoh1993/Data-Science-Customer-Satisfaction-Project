# Group 4 Project - R Script

#PRELIMINARIES
library(tidyverse)

# STEP 1: IMPORT DATA
setwd("/cloud/project/dataset")

raw_data <- read_csv("CustomerSatisfactionDataset.csv")


# STEP 2: SELECT ROWS AND COLUMNS
# Remove duplicate rows
slice_data <- raw_data %>% slice(-1, -2)

# Remove unnecessary columns
select_data <- slice_data %>% select(-(1:17))


# STEP 3: CONSULIDATE AND RESHAPE
# 1. The goal is to have a dataset that equate to true 
# based on randomization that assigned either Camella 
# or Gabriel to a participant during the survey.

#Assign the condition

select_data[is.na(select_data)] = "" # Replace all NA in select_data to ""
cond_data <- select_data %>% 
  mutate(condition = ifelse("g-c" != "", "Camella",
                            ifelse("g-g" != "", "Gabriel", 0)))


# STEP 4: RECODE VALUES 
# Recode value for numerical response capture from participant randomly selected
# to buy a gift for Camella
# 1 - Not excited, 2 - Some What Excited, and 3 - Excited

excitement_data <- cond_data %>% 
  mutate(excitement = ifelse( "i-c_9" & "k-c_9" & "i2-c_9" & "k2-c_9" == 0, 
                                      1,
                                      ifelse("i-c_9" & "k-c_9" & "i2-c_9" & "k2-c_9" <=5,
                                             2,
                                             ifelse("i-c_9" & "k-c_9" & "i2-c_9" & "k2-c_9" <=10,
                                                    3, 0))))

# Recode value for numerical response capture from participant randomly selected
# to buy a gift for Gabriel
# 1 - Not excited, 2 - Some What Excited, and 3 - Excited

excitement_data <- measure_excitement_data1 %>% 
  mutate(excitement = ifelse("i-g_10" & "k-g_10" & "i2-g_10" & "k2-g_10" == 0, 
                                     1,
                                     ifelse("i-g_10" & "k-g_10" & "i2-g_10" & "k2-g_10" <=5,
                                            2,
                                            ifelse("i-g_10" & "k-g_10" & "i2-g_10" & "k2-g_10" <=10,
                                                   3, 0))))


# STEP 5: COMPUTE MEASUREMENTS OF EXCITEMENT
# Compute the excitement score for both Camella and Gabriel as follow:
# (average mean of 1 - Not excited, 2 - Some What Excited, and 3 - Excited)

outcome_data <- excitement_data %>%
  mutate(excitement_measure = mean(excitement))
  

# SAVE 7: SELECT AND SAVE
final_data <- outcome_data %>%
  select(Consent, Gender, condition, excitement, excitement_measure)

# STEP 8: PLOTS
# STEP 9: STATISTICAL ANALYSIS

