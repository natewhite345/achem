#import "template.typ" : lr
#show : lr(5, "FTIR and PCA Analysis of Gelatin in Gummy Bears") 
\ 
PCA was inconclusive as none of the three principal components resulted in clustering for samples taken from the same source or prepared from the same standard, even after normalizing the data to display z-scores for each variable of a particular observation. There was a strong clustering into two groups of the observations by order of magnitude of the absorbance, but those groups did not correspond to bovine vs porcine. PCA of those groups separately also did not yield components that corresponded to porcine vs bovine.  \

Without normalization
#image("lab5denormalizedscree.png")
#image("lab5denormalizedfl2.png")
#image("lab5denormalizedf23.png")

With normalization (Performed by taking each observation row and mapping each value to the quotient of the variable measurement subtracted by the median measurement of the row, and the sample standard deviation)

#image("lab5normalizedscree.png")
#image("lab5normalizedf12.png")