#import "template.typ" : lr
#show : lr(8, "Chronoamperometry and Cyclic Voltammetry")

= Part A
Scan Rate 100 mV/s\
#image("lab8parta/100.png")
Scan Rate 50 mV/s\
#image("lab8parta/50.png")
Scan Rate 20 mV/s\
#image("lab8parta/100.png")
#table(columns: 7, ..("Scan rate, mV/s", [E#sub[pa]], [E#sub[pc]], [E#sub[p/2]], [E#sub[pa]- E#sub[p/2]], [I#sub[pa] (#math.mu;A)], [I#sub[pc] (#math.mu;A)]).map(v => [*#v*]),
"100","0.271282","0.198041","0.2301","0.041182","118.1728","76.59921","50","0.267902","0.203031","0.2272","0.040702","84.16323","53.01171","20","0.268224","0.20287","0.2270","0.041264","53.21656","34.27879"
)
+ 50 : 0.06487, 20 : 0.06535, 100 : 0.07324
+ 50 : 0.62987, 20 : 0.64414, 100 : 0.6482
+ 50 : 0.0407, 20 : 0.04126, 100 : 0.04118
+ #image("lab8parta/rsano.png")#image("lab8parta/rscat.png")
+ The data does not suggest that the reaction is reversible due to the peak cathode voltage being substantially larger than the peak anode voltage. The data does appear to diffusion controlled as the Randles-Sevcik plot is linear. 

= Part B
+ 