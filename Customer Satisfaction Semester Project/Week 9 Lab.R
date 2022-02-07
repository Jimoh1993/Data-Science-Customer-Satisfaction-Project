# Week 9 Lab

# Preliminaries
library(tidyverse)


# IMPORT DATASETS
setwd("/cloud/project/dataset")

flowers <- read.csv("flowers.csv")
head(flowers)

mydata <- read.csv("practicedata1.csv")
head(mydata)

parenthood <- read.csv("parenthood.csv")
head(parenthood)

long_data <- read.csv("long_data.csv")
wide_data <- read.csv("wide_data.csv")
variable_data <- read.csv("variable_data.csv")



# REMOVING DUPLICATES
flowers_notslim <- flowers %>% select(-number, -price)

flowers_slim <- flowers %>% 
      select(-number, -price) %>% distinct()


# Order matters!
test1 <- flowers %>% 
  select(variety, color, number) %>%
  filter(scent == FALSE)

test2 <- flowers %>% 
  filter(color == "yellow") %>%
  slice(1:5)



# MUTATE
# rename variables
mydata.renamed <- mydata %>% 
  rename(year = X1001YR, hinc = H00109, oinc = H00110, save = H99010)



# total income:
mydata.total <- mydata.renamed %>% 
  mutate(total_inc = hinc + oinc)

# average income:
mydata.avg <- mydata.total %>% 
  mutate(avg_inc = mean(total_inc))

# average household income by year:
mydata.avg.yr <- mydata.avg %>% 
  group_by(year) %>%
  mutate(inc_yr = mean(total_inc))

# average income for an individual across all years:
mydata.avg.indiv <- mydata.avg.yr %>% 
  group_by(pid) %>%
  mutate(avg_inc = mean(total_inc))

# average household income by year and nationality:
mydata.final <- mydata.avg.indiv %>% 
  group_by(year, nat) %>%
  mutate(meaninc_yr = mean(total_inc))



# RESHAPING DATA

# wide to long
wide_to_long <- wide_data %>% 
      gather(year, fertility,"X1960":"X2015")

# long to wide
long_to_wide <- long_data %>% spread(year, fertility)

# combined data
reshaped_data <- variable_data %>%
      gather(key, value, -country)

split_column <- reshaped_data %>% 	
  separate(key, c("year", "variable"), extra = "merge")



# DESCRIPTIVE STATISTICS

summary(parenthood)

library(psych)
describe(parenthood)



# PLOTS

# density plots

# simple density plot
ggplot(parenthood, aes(x = maria.sleep)) + geom_density()

# nicer density plot
ggplot(parenthood, aes(x = maria.sleep)) + geom_density(alpha = 0.4) +
  labs(x="Hours of sleep") +
  theme_minimal() +
  scale_fill_viridis_d() 


# boxplots
# first, reshape data
parenthood2 <- parenthood %>% gather(person, sleep, "maria.sleep":"ada.sleep")

# simple boxplots
ggplot(parenthood2, aes(group = person, x = person, y = sleep)) + 
  geom_boxplot()

# nicer boxplot
ggplot(parenthood2, aes(group = person, x = person, y = sleep, 	fill = person)) + 
  geom_boxplot(alpha = 0.7) +
  stat_summary(fun=mean, geom="point", shape=1, 	size=3, color="black", fill="black") +
  labs(x="person", y = "hours of sleep") +
  theme_minimal() +
  theme(legend.position = "none") 


# scatter plots

# simple scatter plot
ggplot(parenthood, aes(x = maria.grump, y = maria.sleep)) + 
  geom_point()

# nicer scatter plot
ggplot(parenthood, aes(x = maria.grump, y = maria.sleep)) + 
  geom_point(shape = 1) +
  geom_smooth(method = lm) +
  ylim(0,10) +
  labs(x="Maria Grumpiness", y = "Hours of Sleep") +
  theme_minimal() 

