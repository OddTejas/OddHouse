# Is there any correlation between education of a state with its wealth?

## Goal
- To plot graduates %  and wealth of Indian states 
- Find any relevent correlation with the data
- Learn jupyter and to clean data
## Findings
![scatterplot](/images/V2-images/DataProjects/Wealth_education.png)
 There is a weak correlation between education and wealth of state. $ r = 0.09$ (correlation coefficent ranges from -1 to +1) This study does not suggest that wealth causes education nor the opposite but only finds the correlation between the both. While plotting education perstate the data used was graduates % of population than the standard literacy rate, as graduates proxy the education and the % of population with high skills which are need to be employable or generate wealth. 
### why so low?
The study used state GDP instead of per capita wealth which causes bigger states to appear richer.  The plfs data used measure the graduates settled in the state, even then the correlation is marginal thus pointing that Education does not always make a state rich. The massive scale and huge diffrence in wealth due to other factors can bring the correlation down; Indsutrial output, agriculture and exports dominate state wealths.  
Bigger states focus of industires and exports and which may not require high number of graduates. States whose main incomes come from agriculture are not effected by graduates as most of them do not wish to work in agriculture sector. Since graduation is a percent while wealth is in crore rupees normalising them to an uniform scale would have been a better comparison
 ### Outliers
 Northeastern states are poorer with disregard to education due to geography and small size. Goa even though it has good colleges like BITS due to its small size and tourism based income it is poorer than industrial states. Same can be said for states that lie in the Himalays.

 Kerala, Delhi and Punjab have high education but most of their knowledge is exported to various countries or diffrent states, or "brain drain" occurs throwing off the data. The high concetration of graduates might also suggest that these states do not have the right infrastructure to use the high skilled workers to convert it to state wealth.

### Limitaions
The PLFS data measures the population % of graduates in the state they are living in it, then it doesnt count number of graduatations from the states. States with high education export maybe underrepresented. The state wealth is the GSDP data which shows the total profits by the state and it does not reflect per capita incomes.

## Learning outcomes
- There is weak correlation between education and state wealth.
- Normalisation of data would have been better.
- Using per capita income can bring out a diffrent prespective where we could see the salaries of people corralating with education.
- Some states like Kerala and Delhi have high knowledge retention but lack the infrastructre to use them.
- Geography plays an important role to facilitate wealth genration. 

## Data
- Higher Education: PLFS Annual Report 2023-24 (MoSPI, Government of India)
- State Wealth (GSDP): PRS India State Budget Reports (prsindia.org)
---
 __Authors notes__
 At first I eyeballed the correlation and persumed it was a moderate corralation, however after statistically measuring the coeffecent and plotting it I found it to be off, and very low. Then I rewrote my study. 
 > AI was used to help me research and challange my logic. After serveral discussion and rewrites I made my decisions. All decision are taken by me and AI has no part in this findings