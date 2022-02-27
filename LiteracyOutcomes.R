# Exploration of Adult Numeracy Outcomes in the USA

# load libraries
library("gmodels")
library("rcompanion")
library("car")
library("caret")
library("gvlma")
library("predictmeans")
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

#import data
PIAAC_Adult_Ed_Outcomes <- read_xlsx("C:/Users/Ty/Desktop/PIAAC_Adult_Ed_Outcomes.xlsx")

#Filter data to examine Mississippi as the State with the lowest outcomes in the exploration phase. 
PIAAC_Adult_Ed_Outcomes1 <- PIAAC_Adult_Ed_Outcomes %>% filter(State == "Mississippi")
PIAAC_Adult_Ed_Outcomes2 <- c("State", "Lit_P1", "Lit_P2", "Lit_P3", "Num_P1", "Num_P2", "Num_P3","Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed")

All_Ed_Outcomes = PIAAC_Adult_Ed_Outcomes[PIAAC_Adult_Ed_Outcomes2]
MS_Ed_Outcomes = PIAAC_Adult_Ed_Outcomes1[PIAAC_Adult_Ed_Outcomes2]
View(MS_Ed_Outcomes)

## wrangling to view the numeracy 
#Isolating all three literacy levels with target dependent factors
LitOnly_PIAAC <- c("State", "Lit_P1", "Lit_P2", "Lit_P3", "Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed")
MS_Literacy <- MS_Ed_Outcomes[LitOnly_PIAAC]
View(MS_Literacy)

#Isolating only the lowest literacy level with target dependent factors
LowLiteracy <- c("State", "Lit_P1", "Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed")
MS_LitP1 <- MS_Literacy[LowLiteracy]


## Test assumptions
plotNormalHistogram(MS_LitP1$Lit_P1)
plotNormalHistogram(MS_LitP1$Male)
plotNormalHistogram(MS_LitP1$Female)
plotNormalHistogram(MS_LitP1$Less_HS)
plotNormalHistogram(MS_LitP1$HS)
plotNormalHistogram(MS_LitP1$More_HS)
plotNormalHistogram(MS_LitP1$SNAP)
plotNormalHistogram(MS_LitP1$Employed)
plotNormalHistogram(MS_LitP1$Unemployed)

#Conclusions

#Initial findings show that female low literacy rates were higher than males 
#When looking at Less/HS/More, it is not surprising that the correlation of more high school is tied to better literacy rates, but further exploration into male vs female is needed to see if there are variances by gender
#Looking at SNAP & Unemployed, there is a correlation of those on SNAP & being unemployed with higher rates of lower literacy than those that are employed
#Without knowing average HHI, which may be further exploration, being employed and on SNAP is also possible so just looking at these variables may not tell us a finite story


