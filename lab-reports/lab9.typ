#import "template.typ": lr
#show: lr(9, "Analysis of Wine Using PCA")
1. #link("https://docs.google.com/spreadsheets/d/11nICFs_IWLvptGVQwJOkuhFIGhMHvmXj-roou_IRF8I/edit?usp=sharing")
2. #image("lab9redcv.png")#image("lab9whitecv.png")
3. Voltages given relative to SHE #image("lab9data.png")
4. Given that we only have three data points for each category, there is insufficient power to determine based on our samples alone which characteristics are the same or different between the wine samples. All observed and computed values are relatively similar to roughly the same extent. The unknown wine is closer to the white wine for cathodic measurements and closer to the Rose for anodic measurements. 

The potential for ferricyanide vs Ag/AgCl can be computed from literature as 360 mV - 220 mV = 140 mV. It was not recorded experimentally during this lab due to explicit instruction by a TA.

Our blank reading showed strong repeated evidence of contamination with observed peaks similar to our voltammograms for the wine sample, thus we did not subtract our blank for our data analysis. 

= Conclusion
1. Regardless of the choice of all features, just the reduction features, or just the oxidation features, the clustering cleanly appears around the lab group which conducted the analysis, not the color or country of the wine. These clusters have been circled and labeled with the intials of the lab group which contributed the sample. #image("lab9overall.png")#image("lab9oxidation.png")#image("lab9reduction.png")
2. Our results are inconclusive. Clustering based on partner pair rather than the actual wine sample indicates the noise from instrumentation or operator error greatly outweighs the signal. We don't see in any of the observation plots the ability to neatly group data points based on color or country of origin. We also don't see the expected result of Rose between in between white wines and red wines; rather, we see that the same Rose analyzed by three different groups does not appear grouped together in any plot. 
3. Both analyses were inconclusive, so no observations can be made. However, univariate analysis is generally more sensitive when there is an expected pattern, whereas multivariate analysis can identify unforseen patterns. 