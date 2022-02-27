# Exploration of Adult Numeracy Outcomes in the USA
install.packages("ggplot2")
install.packages("ggplot.stats")
install.packages("corrplot")



# load libraries
library("gmodels")
library("rcompanion")
library("car")
library("caret")
library("gvlma")
library("predictmeans")
library("ggplot2")
library("ggplot.stats")
library("e1071")
library("lmtest")
library("magrittr")
library("tidyr")
library("lmtest")
library("popbio")
library("e1071")
library("readxl")
library("dplyr")
library("PerformanceAnalytics")
library("corrplot")



#import data
PIAAC_Adult_Outcomes <- read_excel("~/Desktop/Adult_Literacy_and_Numeracy.xlsx")


#Filter data to examine Mississippi as the State with the lowest outcomes in the exploration phase. 
PIAAC_Adult_Outcomes1 <- PIAAC_Adult_Outcomes %>% filter(State == "Mississippi")
PIAAC_Adult_Outcomes2 <- c("State", "Lit_P1", "Lit_P2", "Lit_P3", "Num_P1", "Num_P2", "Num_P3", 
                           "Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed")

All_Ed_Outcomes = PIAAC_Adult_Outcomes[PIAAC_Adult_Outcomes2]
MS_Ed_Outcomes = PIAAC_Adult_Outcomes1[PIAAC_Adult_Outcomes2]
View(MS_Ed_Outcomes)

## wrangling to view the numeracy 
#Isolating all three numeracy levels with target dependent factors
NumOnly_PIAAC <- c("State", "Num_P1", "Num_P2", "Num_P3", 
                   "Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed")
MS_Numeracy <- MS_Ed_Outcomes[NumOnly_PIAAC]
View(MS_Numeracy)

#Isolating only the lowest numeracy level with target dependent factors
LowNumeracy <- c("State", "Num_P1", "Male", "Female", "Less_HS", 
                 "HS", "More_HS", "SNAP", "Employed", "Unemployed")
MS_NumP1 <- MS_Numeracy[LowNumeracy]

## Test for normality: 

plotNormalHistogram(MS_NumP1$Num_P1) 
plotNormalHistogram(MS_NumP1$Male)
plotNormalHistogram(MS_NumP1$Female)
plotNormalHistogram(MS_NumP1$Less_HS)
plotNormalHistogram(MS_NumP1$HS)
plotNormalHistogram(MS_NumP1$More_HS)
plotNormalHistogram(MS_NumP1$SNAP)
plotNormalHistogram(MS_NumP1$Employed)
plotNormalHistogram(MS_NumP1$Unemployed)






