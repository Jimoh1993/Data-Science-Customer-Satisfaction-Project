# Week 8 | Experimental Methods 1
# LAB


# DATA MANIPULATION

# load tidyverse
library(tidyverse)

# importing data
getwd()
setwd("/cloud/project/dataset")

rawdata <- read.csv("practicedata1.csv")

# Look at the dataset using view() / head() function
view(rawdata)

# renaming variables
data.renamed <- rawdata %>% 
  rename(year = YR1001, hinc = H00109, oinc = H00110, save = H99010)

# subset by selecting variables
data.selected <- data.renamed %>% 
  select(pid, year, nat, hinc, oinc, 	save, sex, birth_yr, no_children,	no_people, emp_status)

data.selected <- data.renamed %>% 
  select(-garden, -sugar, -animals)

# subset by filtering observations (rows)
data.filtered <- data.selected %>% 
  filter(birth_yr > 1956 & birth_yr < 2003 & year == 2002)


# NORMALITY TESTS

# load dataset
data <- ToothGrowth

# Shapiro-Wilks test
shapiro.test(data$len)

# plots
library(ggpubr)

ggdensity(data$len) 

ggqqplot(data$len)



# T-TESTS
tutors <- read.csv("tutors.csv")

t.test(
  tutors$grade[tutors$tutor == "Anastasia"],
  tutors$grade[tutors$tutor == "Bernadette"])

ggplot(tutors, aes(group = tutor, x = tutor, y = grade, fill = tutor)) +
  geom_boxplot(alpha = 0.7) + labs(x="Tutor", y="Student Grade") +
  stat_summary(fun=mean, geom="point", shape=1, size=3, color="black", fill="black") + 
  theme_minimal() + theme(legend.position = "none")

