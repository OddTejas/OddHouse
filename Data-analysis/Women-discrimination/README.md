# Composite index of gender inequality by Indian states on young women based on unpaid labour, political representation and workforce participation

## Goals
- Create a state-wise rankings of most hours spent by women compared to men in tasks of unpaid labour and domestic work.
- Create a state-wise rankings of political representation by women compared to men.
- Compare men and women in workforce partcipation
- Use the three rankings and normalise them to a scale of 1 to 0 and create a composite index
- plot any correlation between them  and find meaningful data regarding women disparity.

## Data methodology

### Unpaid labour
The data for unpaid labour is sourced from TUS 2019 where we use total minutes spent by women aged 15-29 for domestic tasks. The data is compared with men and a ratio is obtained which would be used to compare states and create a composite index. 

### Workforce participation ratio
The data from PLFS report 2019 is used, collecting the worker population ration of young women working (15-29 years old) and comparing them to men. The ratio obtained from both will give final State-wise list.

### Political representation of women
The % of women participation in political positions like State Legistlatures state-wise. The data is obtained from prs india who collected data from each state's legistlature data. the normal is subtracted from 1 so that low participation converts to high inequality score.

### Why we do the way we do?
Taking ratio of men and women is crucial to help create concrete evidence by removing other variable like population and wealth from interfering with the data. It shows how much more women work then men relative to their states. The age group selected is 15 to 29 as this is the age when they step into adulthood. Finally all three of these index are weighed equally as there is not any proper weights between these dimensions.
## Findings
### Rankings 
![State rankings of most inequal states](/images/V2-images/DataProjects/gender_ineq.png)
### The Three Pillars of Inequality

| Political Gap | Unpaid Labour | Workforce Gap |
| :---: | :---: | :---: |
| ![Politics](/images/V2-images/DataProjects/political_plot.png) | ![Unpaid](/images/V2-images/DataProjects/unpaid_labour_plot.png) | ![Workforce](/images/V2-images/DataProjects/workforce_plot.png) |
### Analysis
From the composite index the following graph was plotted. Bihar was the state with highest gender inequality while chattisgarh has the least but not zero. 
- Bihar had the highest inequality for unpaid labour and workforce participation, this may suggest that while Bihar had good political representation it does not translate to good oppertunities for young women. 
- Karnataka is second on the list and and scores closer to one on all the indices, the same could be said for Assam and Jharkhand; raising its score and ranking higher on the index.
- Himachal has the highest political inequality however it has low-moderate inequality in terms of workforce participation and unpaid labour. 
- Chattisgarh is the most equal state gender wise, having the most equal of indian state in political participation.

## Conclusions
This rankings based on workforce participation, unpaid labour gap and political participation of women aims to mesure gender equality in India while trying to use measures which are not affected by wealth of the states to give a unfiltered answer.

It shall be noted that these states ofter face two types of inequality; political and physical. 
Bihar's legistlature has good amount of women present but this represnetation had no effect on phyiscal parts of life. It can be argued that not all types of political represntation provides equal oppertunities, which can be seen in Bihar. Meanwhile, chattisgarh had the most amount of women participation in politics and ranked the lowest. This study's aim is not to find correlation between equality and political represntation, as it can be seen with himachal with the highest inequality in politics and yet having a lower score than most other states.
From this, we notice that political represntation in Bihar is flawed. Either women are for name's sake and are controlled by women candidiates or they are not taking decisions in the best interest of women.

States like Assam and karnataka have all round high inequality, which is shocking considering that karnataka has good all round development.  These states demand a diffrent type of policies to help the women. High amount of women from these states are working in unpaid labour and are absent in paid work.
Karnataka can be explained from the fact that karnataka is mostly developed only in a single city, the data from the entire state skews this. Rural infrastructre maybe lacking or women face problems from family laws or social contstraints. Then, a wider population of karnataka must be supported to increase the equality in the state.
## Limitations
- Political participation data was from 2023 before reservation of seats for women which sits at a diffrent time compared to PLFS and TUS data.
- few states were dropped as they lacked the data to conduct this analysis; Arunachal Pradesh, Goa, Manipur, Meghalaya, Mizoram, Nagaland,Sikkim, Tripura.
## Data
Political represntation  -
data collected by prsindia.org 

---
unpaid labour- 
TUS 2019. The data used was time utilised for domestic services for home members. The data is given as minutes per day which was normalised to help compare. Age group of 15 to 29 was selected.

---
workforce particpation-
PLFS 2019. Women and men aged 15 to 29 was selected and taken a ratio to be normalised.


