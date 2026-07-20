# A state level analysis of gender inequality and acohol consumption across India
> *Note-* This project is fully reproducable, clone this repo and run the jup file with all the dependencies in the requirement.txt folder
## Introduction
Upon asking few of my friends, they agreed that alcohol may have a part in gender inequality but it is not the sole reason. To which I wanted to find out if our assumption is true. To answer this I started this project can we find gender inequality of a region by its % of male alcohol consumers.
> here is the full[ paper](/Data-analysis/alcohol-gender/report.pdf)
## Goals
Use advanced statistical tools to tell a story and relationship between alcohol consumption and gender inequality. 

> __This study does not argue if alcohol is good or not nor does it says that alcohol causes gender inequality but tries find meaningful relation which can be used to predict inquality with alcohol as a metric.__ 

## What did my report find
After an initial analysis with basic two variable correlation; seeing how to variable are related. The results showed little to no relation and moreover due to the small sample the p values (suggesting that the relationship could have occured simply by chance.) were above the the accepeted value of 0.05.

At seeing this first, I thought maybe alcohol consumption has no relations with gender inequality. but, I thought, about the what I measured. It was the relationship of between the national averages, 

but what if,

The induvidual state had a different story to tell, could there be highs and lows that were washing out my results?

I delved deeper.
## Going deeper
I treated india as one country with no varitaions. Which is hardly true for any county but India is known for being diverse, Aha! maybe there could be clusters, some regions might have high drinkers due to traditions and vice-versa low drinkers. 

So to find clusters I used  cluster analysis which has these steps.

- Group the states into clusters based on how much they drink and  what is the level of inequality. The clusters are forced into 2 groups initally

- repeat this for multiple times but change the number of groups you assume exist.
- now caluclate if the if these clusters are random or actually do to them being on different place on graph. called sillouette score.

- The case in which the sillouette score is the maximum is said as the best appoximation of the clusters.


The results showed me that when clusters are grouped into 2 then it is mathematically the most accurate.

So, now we found two groups. What are the groups based on? By finding out where this clusters are located and their centers we can deduce that clusters depend of gender inequality.

The two groups were seperated based on the gender inquality dimension,  how inequal it is for women rather than two groups with high inquality with high consumption and low inqualiry and low consumption

## conclusions
This study taught me that gender inquality is far more than a simple value, It is often more nuanced that a simple correlation. Here alcohol doesnt seem to have much relation but it doesnt mean it has effect on lives of people and gender inequality. Thus alcohol cannot be used to find gender inquality of a region.

## limitations
This study like many other takes assumptions to model a real and more complex world in simplar more understandble world.

One big limitation is that way this data is collected. The percent of alcohol drinkers is a self report, i.e. people were asked to report if they drink or not. This can lead of people lying and skewing the data.

Gender inquality is  multi-dimensional. no single mertic can fully measure the lives of women across india.

male alcohol drinkers is a proxy variable, the amount, frequency and social contexts were not considered.
> here is the full[ paper](/Data-analysis/alcohol-gender/report.pdf)