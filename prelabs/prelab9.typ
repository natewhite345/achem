#import "util.typ" : safety
#safety( ..("Potassium Ferricyanide", "Potassium Nitrate").map(v => (v, "Standard", "None", "None", "Hazardous Waste")).flatten(), 
  "Ethanol", "Standard", "Flammable", "None", "Hazardous Waste",
  "Tartaric Acid", "Standard", "None", "None", "Hazardous Waste",
  "Sodium Hydroxide", "Standard", "Strong base", "Acids", "Sink once neutralized",
  "Hydrochloric acid", "Standard", "Strong acid", "Bases", "Sink once neutralized")

+ #image("prelab9overallfl1vsf2.png")#image("prelab9overallbiplotf1f2.png")
  There is not any apparent clustering based on countries and the dataset is too small to make conclusions about outliers, but there is a division between red and white wines on the basis of I#sub[pc], with higher values corresponding to white wines and lower values corresponding to red wines. 
+ Oxidation#image("prelab9oxidation.png")Reduction#image("prelab9reduction.png")#image("prelab9reduction2.png")
  There is not any apparent pattern from the oxidation dataset which shows numerous wines from different continents and different colors clustered together, but the reduction dataset shows the same pattern of I#sub[pc] determining white/red. #image("image.png")
+ No. All show clustering without regards to country or color. Overall:#image("prelab9overallf1f3.png")#image("prelab9overallf2f3.png")
  Oxidation: #image("prelab9oxidationf1f3.png")#image("prelab9oxidationf2f3.png")
  Reduction has only two original features, so it is impossible to derive a third principal component.