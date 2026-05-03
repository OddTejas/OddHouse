#set page(
paper: "a5",
margin: (x:1.5cm, y: 1cm),
numbering: "1",
number-align: center)
#set par(leading: 0.7em)
// Gap between line
#show heading: set block(above: 1.5em,below: 1em)

// Title setup
#let odd_title(title) ={
  align(center)[
    #set text(font:"New Computer Modern",size: 11pt,weight:"bold",baseline: 2pt)
    #upper(title)
    #v(1em)
    #set text(font:"JetBrains Mono",size: 9pt,weight: "bold")
    #upper("Oddhouse report")
    #align(right)[
      #set text(font:"New Computer Modern",size:9pt,weight:"bold")
      k. Evan Tejas
    ]
  ]
  
  
  
}
#show table:set text(font: "JetBrains Mono",size: 9pt)
#set par(justify: true)
#set text(lang: "en", hyphenate: true)
#odd_title("Composite index of gender inequality by Indian states on young women based on unpaid labour, political representation and workforce participation")


== Goals
- Measure the gender inequality in different Indian states using mulitiple indicies.
- Create a composite index
- Understand min-max normalisation
== Data methodology
=== Process
The data used in this report targets women and men of age 15 to 29 as this is a crucial years in their youth. The general procedure consists of taking a ratio of women and men. 
#align(center)[#set text(size:13pt)
$ R_i = I_"women"/I_"men" $]
This ratio is then scaled to fit between 0 and 1 to give a uniform score using min max normalization, which can be compared between multiple indices. For example the ratio of women workforce participation would look like:
$ I_n = (R_i - R_"min")/(R_"max"-R_"min") $

This index would give higher score to higher ratio. In case of unpaid labour higher score shows more work done by women then men, meaning this state has higher inequality. For political representation and workforce participation higher score means there is higher equality. 

This report tried to rank states with highest inequality thus a higher score must mean most inequal. Due to this, $I_n$ must be flipped for political and workforce indices.

For example, the workforce index:

$ I_n"final" = 1- I_n"workforce"  $
After this cruical step, higher score would always mean higher inequality.

=== Why we do the way we do?
Taking ratio of men and women in this way makes sure that we are really measuring inequality instead of its underlying wealth; wealthy states which have higher education, access to healthcare, do to their richness may skew the data causing inequality in terms on freedom and resposibilties to be hidden. This shows how much more women work then men relative to each other. The age group selected is 15 to 29 as this is the age when they step into adulthood. Finally all three of these index are weighed equally as there is not any proper weights between these dimensions. Like HDI this study too uses equal weighting to exclude subjective bias from the sub indices and  follows a more robust methodology.
== Findings
=== Rankings 
 #image("/images/V2-images/DataProjects/gender_ineq.png")
 #v(20pt)
#grid(
  columns: (1fr,1.2fr),
  gutter: 4pt,
  [#image("/images/V2-images/DataProjects/political_plot.png")],
  [#image("/images/V2-images/DataProjects/unpaid_labour_plot.png")],
  
)

#align(center)[#image("/images/V2-images/DataProjects/workforce_plot.png", width: 65%)]
=== Analysis
From the composite index the following graph was plotted. Bihar was the state with highest gender inequality while chattisgarh has the least but not zero. 
- Bihar had the highest inequality for unpaid labour and workforce participation, this may suggest that while Bihar had good political representation it does not translate to good oppertunities for young women. 
- Karnataka is second on the list and and scores closer to one on all the indices, the same could be said for Assam and Jharkhand; raising its score and ranking higher on the index.
- Himachal has the highest political inequality however it has low-moderate inequality in terms of workforce participation and unpaid labour. 
- Chattisgarh is the most equal state gender wise, having the most equal of indian state in political participation.

== Conclusions
This rankings based on workforce participation, unpaid labour gap and political participation of women aims to mesure gender equality in India while trying to use measures which are not affected by wealth of the states to give a unfiltered answer.

It shall be noted that these states ofter face two types of inequality; political and physical. 
Bihar's legistlature has good amount of women present but this represnetation had no effect on phyiscal parts of life. It can be argued that not all types of political represntation provides equal oppertunities, which can be seen in Bihar. Meanwhile, chattisgarh had the most amount of women participation in politics and ranked the lowest. This study's aim is not to find correlation between equality and political represntation, as it can be seen with himachal with the highest inequality in politics and yet having a lower score than most other states.
From this, we notice that political represntation in Bihar is flawed. Either women are for name's sake i.e proxy candidates,and are controlled by men or they are not taking decisions in the best interest of women.

States like Assam and karnataka have all round high inequality, which is shocking considering that karnataka has good all round development.  These states demand a diffrent type of policies to help the women. High amount of women from these states are working in unpaid labour and are absent in paid work.
Karnataka can be explained from the fact that karnataka is mostly developed only in a single city, the data from the entire state skews this. Rural infrastructre maybe lacking or women face problems from family laws or social contstraints. Then, a wider population of karnataka must be supported to increase the equality in the state.
== Limitations
- Political participation data was from 2023 before reservation of seats for women which sits at a diffrent time compared to PLFS and TUS data.  
- few states were dropped as they lacked the data to conduct this analysis; #table(
  columns: (1fr,1fr),
  gutter: (1em),
  align: (center),
  inset: 7pt,
  [Arunachal Pradesh],[Goa],[Manipur],[Meghalaya],[Mizoram],[Nagaland],[Sikkim],[Tripura]
)
#v(20em) 
== Data
#set text(font: "JetBrains Mono",size: 9pt)
#grid(
  
  columns: (1fr,auto),
  gutter: 1em,
  align: left,
  inset: 5pt,
  [Political represntation - ],[prsindia.org ],
  [unpaid labour -],[TUS 2019],
  [workforce particpation-],[PLFS 2019.]
)









