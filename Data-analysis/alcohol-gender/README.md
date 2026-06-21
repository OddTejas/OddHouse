# A state level analysis of gender inequality and acohol consumption across India
## Abstract
Weak correlations at the national level can conceal substantial differences between states, particularly when social and economic indicators vary across regions. This paper uses a custom gender inequallity index based on min-max normaliation of three dimensions; political representation, unpaid labour and workforce particiaption. This is combined with clusted analysis based on k-means with a sillouette score of 0.4 after robust scaling. while, correlation shows weak relationship between gender inequality and alcohol consmption, cluster analysis identified two clusters, analysis showed clusters diverged into equal and non-equal states. The data for alcohol consumption is collected from NHFS -5 (2019-2020).
## introduction 
This study observes the relationship between alcohol consumption and  gender inequality using a custom inequality index created by the author. While there are many social norms regarding such topics, this analysis would not argue whether alcohol is good or not and neither advocates that consumption causes gender inequality but only tries to find correlation using statistical means. The sample size used for this study is 20 states and data for alcohol consumption is from NHFS - 5, % of men who consume alcohol.

After a weak correlation, more analysis was conducted to see if the national average could hide state specific difference could explain the observations.


## Data methodology

### process
For correlation raw values were used and pearsons r value and p values were calculated. 
$$r = -0.21,\space p = 0.35$$
To test for skewing for outliers spearman's rank was compared which is $=-0.18$

To find clusters data was scaled using robust scaling to account for outliers and K means was used to identify potential clusters along with sillhouette score which when calculated for multiple k values and $k=2$ gave the best result for the evidence of seperation.
### Inequality Index
Using my own custom Index based on workforce participation, unpaid labour and political representation. The data was min-max normalized with equal weights.

### alcohol consumption
NHFS survey provides data of % of men consuming alcohol state wise.

### Economic development 
To account for economic development, NSDP - per-capita from RBI handbook of statistics was collected. This was added to a matrix correlation.

## Results
![Regression plot of alcohol vs custom gender index](/images/V2-images/DataProjects/alcohol/regplt.png)
![cluster analysis](/images/V2-images/DataProjects/alcohol/cluster.png)
## Discussion
The results of this study show contrary to the popular assumptions,  alcohol is not a strong predictor of women's empowerment. Many of the states like near the average consumption and a few outliers are noted.

 Per-capita income too showed weak correlation with the gender inequality and empowerment index. Economic prosperity alone could not answer why some states had higher % of women in unpaid labour and performed worse in workforce particiaption.

 On running clustering by K-means, data diverged into two groups with a moderate sillhouette score of 0.4. This suggest that the state level hetrogeneity may paint a better picture than national averages. Upon looking at the cluster centers it was found that the groups were divided based on the gender index rather than alcohol consumption.

The absence of correlation between alcohol and gender inequality does not mean that alcohol consumption has no effect on social outcomes but, alcohol alone cannot predict inequality. 


## Limitations
First major limitation we much acknowledge is that the sample size of this report is only 20 which limits statistical accuracy.Secondly, the acohol consumption data is self-reported and this has an effect that some state with high social stigma or dry states may under report than the true value. The Gender index only captures a small slice of oppertuinity and inequality against women. Fourthly, state-level averages distort the different socio-economic differences. Finally, this study is explanitory and does not resolve to causal relationship.