#import "util.typ": safety

#safety(..("Citric acid", "Glucose syrup", "Gelatin", "Pectin", "Sucrose").map(v => (v, "Standard", "None", "Not Reactive", "Non-hazardous trash")).flatten())

+ PCA is appropriate for this dataset. The first three principal components account for 97.003% of the variability, which is above the 80% threshold. 
  #image("prelab5scree1.png")
+ It appears that red/white corresponds to F2 being positive or negative respecitively. Concord R and Concord W are substantial outliers on the F1 axis, having strongly positive scores, whereas the other wines have slightly negative scores.
  #image("prelab5obs1.png")
+ Performing PCA on F1 and F3 does not appear to generate new trends. More infomation on the wines would be necessary to understand what F3 represents. No new clustering patterns appear as a result of doing PCA on F1 and F3 or F2 and F3. 
  #image("prelab5obs2.png")
  #image("prelab5obs3.png")
