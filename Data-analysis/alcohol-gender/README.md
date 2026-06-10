# A state level analysis of gender inequality and acohol consumption across India

## Abstract
This study observes the relationship between alcohol consumption and  gender inequality using a custom inequality index created by OddHouse (me). While there are many social norms regarding such topics, This analysis would not argue whether alcohol is good or not and neither advocates that consumption causes gender inequality but only tries to find correlation using statistical means.

After a weak correlation, more analysis was conducted to see if the national average could hide state specific difference could explain the observations.

## goals
- Create a correlation graph of alcohol consumption and gender inequality.
- Reduce sensitivity from outliers
- Compare data with respect to with dry states and without dry states.
- Find clusters

## Data methodology

### process
For correlation raw values were used and pearsons r value and p values were calculated. To find clusters data was scaled using robust scaling to account for outliers and K means was used to identify potential clusters along with sillhouette score which when calculated for multiple k values and $k=2$ gave the best result for the evidence of seperation.
### Inequality Index
Using my own custom Index based on workforce participation, unpaid labour and political representation.

### alcohol consumption
NHFS survey provides data of % of men consuming alcohol state wise.

### wealth 
To account for wealth, NSDP from RBI handbook of statistics was collected. This was added to a matrix correlation.

## Results

## Limitations
First major limitation we much acknowledge is that the sample size of this report is only 20 which limits statistical accuracy.Secondly, the acohol consumption data is self-reported and this has an effect that some state with high social stigma or dry states may under report than the true value. The Gender index only captures a small slice of oppertuinity and inequality against women. Fourthly, state-level averages distort the different socio-economic differences. Finally, this study is explanitory and does not resolve to causal relationship.