#!/usr/bin/env python
# coding: utf-8

# In[1]:


#import packages
import pandas as pd
import scipy, scipy.stats
import numpy as np
from scipy.stats import norm
from scipy import stats
import matplotlib.pyplot as plt


# In[2]:


PIAAC_File = pd.read_excel('Adult_Literacy_and_Numeracy.xlsx')


# In[3]:


#Create the various data frames that will be needed during later analysis


# In[4]:


All_Ed_Outcomes = PIAAC_File[["State", "Lit_P1", "Lit_P2", "Lit_P3", "Num_P1", "Num_P2", "Num_P3", 
                           "Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed"]]


# In[6]:


Lit_Ed_Outcomes_all3 = PIAAC_File[["State", "Lit_P1", "Lit_P2", "Lit_P3", 
                           "Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed"]]


# In[7]:


Lit_Low_Outcomes = Lit_Ed_Outcomes_all3[["State", "Lit_P1", 
                           "Male", "Female", "Less_HS", "HS", "More_HS", "SNAP", "Employed", "Unemployed"]]


# In[8]:


# Filter to target the state with the highest percentage of lowest outcomes


# In[9]:


MS_Lit_Ed_Outcomes_all3 = Lit_Ed_Outcomes_all3[Lit_Ed_Outcomes_all3['State'].str.contains('Mississippi')]
MS_Lit_Ed_Outcomes_all3.head()


# In[11]:


MS_Lit_Low_Outcomes = Lit_Low_Outcomes[Lit_Low_Outcomes['State'].str.contains('Mississippi')]


# In[13]:


MS_Lit_Low_Outcomes.tail()


# In[14]:


MS_Lit_Low_Outcomes.value_counts()


# In[16]:


MS_Lit_Low_Outcomes.Lit_P1.value_counts()


# In[ ]:


#Correlation factors to be examined that affect literacy - High School levels,  Employment, SNAP - National vs MS


# In[17]:


Lit_Ed_Outcomes_all3.corr(method='pearson').style.format("{:.2}").background_gradient(cmap=plt.get_cmap('coolwarm'), axis=1)


# In[18]:


MS_Lit_Ed_Outcomes_all3.corr(method='pearson').style.format("{:.2}").background_gradient(cmap=plt.get_cmap('coolwarm'), axis=1)


# In[19]:


# The strongest statistical correlations nationally are in less HS & SNAP benefits, which also may indicate high school dropouts but we would need further evaluation to verify
# In MS, the correlation wtih Less HS and SNAP is more highly correlated

