
## Project:  STA 215, Fall 2025, Final Project
# File Name: Governor Marital Status
# Date:      2025_12_3
# Who:       Madeline Dennis



## Load packages
# NOTE: Run base.R if these commands return an error!
setwd("/courses/STA145/dennism3")
library(readr)
library(dplyr)
library(ggplot2)
library(haven)
library(forcats)
library(psych)
library(tidyverse)


# Load data 
data <- read_delim("data.csv")



##################################################################################
############### Table 1: descriptive statistics    ####################   
##################################################################################

# mean of governors number of children
mean(data$number_of_children)
sd(data$number_of_children)
hist(data$number_of_children)
summary(data$number_of_children)
min(data$number_of_children)
max(data$number_of_children)


# Number of Spouses
mean(data$gov_number_of_spouses)
sd(data$gov_number_of_spouses)
hist(data$gov_number_of_spouses)
summary(data$gov_number_of_spouses)
min(data$gov_number_of_spouses)
max(data$gov_number_of_spouses)


# Statistic on Marital Status
table(data$gov_married)



##################################################################################
#################### Figure 1: boxplot             ####################   
##################################################################################
# BOX PLOT

ggplot(data, aes(x = as.factor(gov_married) , y =  number_of_children)) +
  geom_boxplot() +
  labs(title = "Box Plot of Marital Status and Children ",
       x = "Marital Status",
       y = "Number of Children") +
  theme_minimal()


##################################################################################
####################  Table 2: contingency table                ####################   
##################################################################################
#T-Test

t.test(number_of_children ~ gov_married, data = data)

