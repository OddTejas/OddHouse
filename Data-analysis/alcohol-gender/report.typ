#set page(
paper: "a4",
margin: (x:0.75in, y: 0.75in),



)

#set par(leading: 0.95em)
// Gap between line
#show heading: set block(above: 1.5em,below: 1em)

// Title setup
#let odd_title(title) ={
  align(center)[
    #set text(font:"New Computer Modern",size: 13pt,weight:"semibold",baseline: 2pt)
    #title
    #align(center)[
      #set text(font:"New Computer Modern",size:10pt,weight:"bold")
      k. Evan Tejas
    ]
    
    #set text(font:"JetBrains Mono",size: 9pt,weight: "bold")
    Oddhouse Research Report   
  ]
  
  
  
}
#show table:set text(font: "JetBrains Mono",size: 9pt)
#set par(justify: true)
#set text(lang: "en", hyphenate: true)
#odd_title("A State Level Analysis of Gender Inequality and Alcohol Consumption across India")


 #v(2em)
  #set text(size: 10pt)
  *Abstract-* Weak correlations at the national level can conceal substantial differences between states, particularly when social and economic indicators vary across regions. This paper studies relationship between gender and opportunity inequality through a custom inequality index and Alcohol consumption of percent of male drinkers from NFHS-5 household survey by self-reporting. Bivariate correlation gave non-significant relationship with $r= -0.21, p = 0.35$ .To find state-specific heterogeneity,  k-means clustering along with robust scaling was applied  with a resulting silhouette score of $0.4$.  cluster analysis identified two clusters, analysis showed clusters diverged into equal and non-equal states. This paper concludes that alcohol is a weak predictor of gender inequality and quantifies that inquality is more nuanced do to socio-economic variations.
#v(1em)
_*keywords:*_ Gender inequality · Alcohol consumption · India · Cluster analysis · K-means · Data analysis
#v(3em)
#set text(size: 11pt)
#grid(
  columns: (1fr, 0.4fr,),
  gutter: 1em,
  [Author],[K. Evan Tejas],
  [],[Student Researcher],
  [],[Telangana, India],
  [],[2026]
)
#pagebreak()
#counter(page).update(1)
#set page(
  columns: 2,
  numbering: "1",
  number-align: center,
  
 

)
#set text(hyphenate: false)
#set par(leading: 0.95em,)
#show table.cell.where(y: 0): set text(weight: "bold")


= Introduction
This study observes the relationship between alcohol consumption and  gender inequality using a custom inequality index created by the author[1], consisting of; Time spent for Unpaid labour[2], Workforce Participation[3] and Political Representation[4] ratio of women over men, which are normalized and weighted equally. (Age group selected is 15-29) _*Note:*_ *Higher values for OGI indicates higher inequality* While there are many social norms regarding such topics, this analysis would not argue whether alcohol is good or not and neither advocates that consumption causes gender inequality but only tries to find correlation using statistical means. The sample size used for this study is 20 states and data for alcohol consumption is from NHFS - 5 [5], % of men who consume alcohol.

After a weak correlation, more analysis was conducted to see if the national average could hide state specific difference could explain the observations, thus clustering was selected to find this patterns. 

= Data methodology

== Process
For correlation raw values were used and Pearson's correlation coefficient value and p values were calculated. 
$$r = -0.21, p = 0.35$$
To test for skewing for outliers Spearman's rank coefficient rank was compared which is $-0.18$

To find clusters data was scaled using robust scaling to account for outliers and K means was used to identify potential clusters along with sillhouette score which when calculated for multiple k values and $k=2$ gave the best result for the evidence of seperation.
== Inequality Index
Using my own custom Index based on workforce participation, unpaid labour and political representation. The data was min-max normalized with equal weights. This index is referenced as (OGI) throughout this paper.

== alcohol consumption
NHFS survey provides data of % of men consuming alcohol state wise.

== Economic development 
To account for economic development, NSDP - per-capita from RBI handbook of statistics[6] was collected. This was added to a matrix correlation.

= Results
Pearson's correlation indicated a weak negative relationship between alcohol consumption and the custom gender and opportunity index (r = -0.21, p = 0.35). Spearman's rank correlation produced a similar result ($rho$ = -0.18), suggesting that the observed relationship was not driven by outliers. K-means clustering identified two moderately separated clusters (silhouette = 0.40), shown in (Figure 1) and (Figure 2).
#figure(
image("/images/V2-images/DataProjects/alcohol/regplt.png"),caption: "Relationship between alcohol consumption and the custom gender inequality index.")
#figure(
image("../../images/V2-images/DataProjects/alcohol/cluster.png"),caption: "K-means clustering of Indian states after robust scaling." )
#figure(
table(
  columns: (auto, 1fr, 1fr,1fr),
  stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else if y == 3 { (bottom: 1pt + black) } else { none },
  [Dimension],[OGI],[Alcohol],[NDSP per cap],
  [OGI],[1],[-0.21],[-0.17],
  [Alcohol],[-0.21],[1],[-0.002],
  [NDSP per cap],[-0.17],[-0.002],[1],
), caption: "Correlation matrix of three dimensions")
#v(1em)
#figure(
  table(
    columns: (auto,auto,auto),
    stroke: (x, y) => if y == 0 { (bottom: 1pt + black) } else if y == 2 { (bottom: 1pt + black) } else { none },
    [Variables(scaled)],[Cluster A],[Cluster B],
    [Alcohol],[0.151],[0.041],
    [OGI],[2.275],[-0.504],
  ),caption: "Cluster centroids of clusters A and B"
)
(Table 2) shows the relative distance between alcohol is minimal while inequality has a wide swing between the two clusters
= Discussion
Regression analysis revealed a statistically insignificant, this may mean that within this report and current data of sample size of 20 states, alcohol is not a strong predictor of women's empowerment. Many of the states like near the average consumption and a few outliers are noted.

Per-capita income too showed weak correlation with the gender inequality and empowerment index. Economic prosperity alone could not answer why some states had higher % of women in unpaid labour and performed worse in workforce particiaption.
On running clustering by K-means, data diverged into two groups with a moderate sillhouette score of 0.4.

This suggest that the state level hetrogeneity may paint a better picture than national averages. Upon looking at the cluster centers it was found that the groups were divided based on the gender index rather than alcohol consumption.The absence of correlation between alcohol and gender inequality does not mean that alcohol consumption has no effect on social outcomes but, alcohol alone cannot predict inequality. 

== Limitations
First major limitation we much acknowledge is that the sample size of this report is only 20 which limits statistical accuracy. Secondly, the acohol consumption data is self-reported and this has an effect that some state with high social stigma or dry states may under report than the true value. The Gender index only captures a small slice of opportuinity and inequality against women. Fourthly, state-level averages distort the different socio-economic differences. Finally, this study is explanitory and does not resolve to causal relationship.

== References

[1] Evan Tejas. Composite Index of Gender Inequality by Indian States Based on Workforce Participation, Unpaid Labour and Political Representation. https://github.com/OddTejas/OddHouse/tree/oddhouse-v2/Data-analysis/Women-discrimination.

[2] Ministry of Statistics and Programme Implementation. (2020). Time Use Survey in India 2019. National Statistical Office, Government of India. https://www.mospi.gov.in

[3] Ministry of Statistics and Programme Implementation. (2020). Periodic Labour Force Survey (PLFS) – Annual Report 2019-20. National Statistical Office, Government of India. https://www.mospi.gov.in
[4] PRS India. (2013). Representation of Women in State Legislatures. https://prsindia.org

[5] Ministry of Health and Family Welfare. National Family Health Survey (NFHS-5), 2019–21.

[6] Reserve Bank of India. Handbook of Statistics on Indian States.
#pagebreak()
#counter(page).update(1)
#set page(
numbering: "i",
columns: 1

)
#let appendix(app)={
align(center)[
  #set text(size: 13pt,weight:"black")
  #app
]
}


#appendix("Appendix: Construction of OGI")
== Custom Gender inequality and opportunity index
$ R_i = I_"women"/I_"men" $
This ratio is then scaled to fit between 0 and 1 to give a uniform score using min max normalization, which can be compared between multiple indices. For example the ratio of women workforce participation would look like:
$ I_n = (R_i - R_"min")/(R_"max"-R_"min") $

This report tried to rank states with highest inequality thus a higher score must mean most inequal. Due to this, $I_n$ must be flipped for political and workforce indices.

For example, the workforce index:

$ I_n"final workforce" = 1- I_n"workforce"  $
$ "OGI" = ("Ul"_I + "PR "_I +"WP"_I)/3 $
where,

 UL = Normralised unpaid labour

 PL = Normralised Political representation

 WP = Normalized Workforce participation

== Why this index?
Inequality in terms of  freedom and responsibilties is our aim. This report tries to measure the underlying social fabric. This shows how much more women work then men relative to each other. The age group selected is 15 to 29 this is the age when they step into adulthood. Finally all three of these index are weighed equally as there is not any proper weights between these dimensions, Different people have different opinions on which dimension has more importance, like HDI this study too uses equal weighting to exclude subjective bias from the sub indices and keep them trasnparent while acting as a proxy even if they are not the best fit.