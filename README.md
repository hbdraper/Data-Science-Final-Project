# Data-Science-Final-Project
This is a final project for the Entity Academy/Woz U Data Science course.
Data Science students: Hilary Draper and Diana Fujimura
PIAAC Adult Educational Outcomes

From the 1940s- to the 1960's the United States Education system had become the envy of the world. However, by 1980, the educational system had fallen in worldwide rankings. There have been many changes in funding, policies, and access to education over those decades. Over this time research and publication continued while the students of the country have had to attend public schools and deal with changes in public education policy. The implementation of the No Child Left Behind Act in 2001 displays the way public policy has failed to acknowledge and incorporate the body of work created by fields such as educational anthropology, educational psychology, and other areas of educational research. Upon its unveiling teachers, parents, and school districts across the country expressed their concern and, in some cases, even outrage at the implications of such a sweeping law. The data researched in this project marks a preliminary research journey to inform further research and methodology in the future.

![image](https://user-images.githubusercontent.com/90987410/155908036-13d492d0-ccba-4d6f-a3a5-51ae79fa9c0f.png)


## 1.	Phase One: The PIAAC Dataset
The dataset was located through the National Center for Education Statistics website. It contains over 3200 records including 78 columns with 3232 rows. The PIAAC gathered together the educational outcomes of adults ranging from age 16-74 years old in numeracy and literacy from all fifty states and the District of Columbia. The data was collected by combining three collections from 2012, 2014, and 2017 with the cooperation of the National Center for Education Statistics and the Organization for Economic Cooperation and Development.

Independent variables include the 6 tested outcomes including low, medium, and high literacy and numeracy.

The original data can be found here.
Source for data: https://nces.ed.gov/opengis/rest/services/Social_Economic/NCES_PIAAC_SKILLSMAP_COUNTY_2017/MapServer/0


## 2.	Phase Two: Data Wrangling:

-The data was filtered down to focus on items that can be examined in the scope of this project. This meant focusing on education levels, gender, employment, and SNAP as an indication of socio-economic factors. 
- All remaining data represents the percentage of the population in the county for each indicator

Viewable here: https://github.com/hbdraper/Data-Science-Final-Project/blob/d518e5caf6c67da9e69adab61bb044584bf34866/Adult_Literacy_and_Numeracy.xlsx


## 3.	Phase Three: Exploratory Data Analysis
- Pivot tables with the averages by the state were produced to his hon in on the highest and lowest achieving states in the USA.
- Excel was used to create preliminary charts and graphs to view nationwide trends
-Tableau was utilized to create a nationwide heat map for the lowest rates of both numeracy and literacy


## 4. Phase Four: Data Analysis
- R was used to create data frames and histograms
-Python was used to create correlation matrixes and plan for further analysis

Viewable here: 
-R file: 
  -Lit: https://github.com/hbdraper/Data-Science-Final-Project/blob/d518e5caf6c67da9e69adab61bb044584bf34866/LiteracyOutcomes.R
  -Num: https://github.com/hbdraper/Data-Science-Final-Project/blob/d518e5caf6c67da9e69adab61bb044584bf34866/NumeracyOutcomes.R
  
-Python file:
  -Lit: https://github.com/hbdraper/Data-Science-Final-Project/blob/d518e5caf6c67da9e69adab61bb044584bf34866/Literacy_PIAAC_Final_Project.py
  -Num: https://github.com/hbdraper/Data-Science-Final-Project/blob/d518e5caf6c67da9e69adab61bb044584bf34866/Numeracy_PIAAC.py.ipynb

## 5. Phase Five: Visualization
-images collected from python, R, tableau, and Excel and then combined to produce a presentation in google slides. 


## 6. Phase Six: Presentation

-Presented February 25th, 2022 via Zoom.
-Presentation is viewable via Vimeo at: https://vimeo.com/682540086
-PDF of presentation viewable: https://github.com/hbdraper/Data-Science-Final-Project/blob/d518e5caf6c67da9e69adab61bb044584bf34866/Final%20Project%20Deck.pdf

