#import "template.typ": lr, plot, cetz
#show: lr(3, "UV-vis Spectrophotometric Analysis of Commercial Curcumin")
#let dataa = (
    // Stock solution contained
    // (Volume of stock soln in 10mL standard solution, Observed Absorbance at 429 nm)
    (0.1, $2.71 times 10^(-6)$, 0.094),
    (0.2, $5.43 times 10^(-6)$, 0.283),
    (0.3, $8.14 times 10^(-6)$, 0.304),
    (0.4, $1.09 times 10^(-5)$, 0.409),
    (0.5, $1.36 times 10^(-5)$, 0.529),
    (0.6, $1.63 times 10^(-5)$, 0.611)
)
#let curcuminMM = 368.38
#let datab = (
    0.094, 0.162, 0.108
)
+ #table(
        table.header(..("Volume (mL)", "Concentration (M)", "Absorbance at 429nm (AU)").map(v => [*#v*])),
        columns: (auto, auto, auto), 
        ..dataa.flatten().map(v => [#v]))
  Example calculation:
  $"0.1 mL stock solution" / "10 mL solution" times "10.0 mg curcumin" / "100 mL stock solution" times "1000 mL"/ "1L" times "1 g"/ "1000 mg" times "1 mol curcumin" / "368.38 g" times "1 M"/"1 mol/L" = 2.71 times 10^(-6) M $
  #image("lab3q1.png")
+ The slope of the linear regression is $3.61 times 10^4" M"^(-1)$. Since we had a 1.0 cm cuvette, applying Beer's Law yields a molar absorptivity constant at $lambda_"max" = 429" nm"$ of $3.61 times 10^4" M"^(-1)" cm"^(-1)$. 
+ The correlation coefficient of the data, r, is 0.9852. This is strong evidence of correlation. 
+ The y-intercept is 0.0289. This is nonzero despite Beer's Law, and can be used as an estimate of the noise of the calibration curve owing from indeterminate error. 
+ The residuals plot shows no apparent pattern, supporting the conclusion that there is a linear trend with the data. 
+ Using the y-intercept (0.0289) as an approximation for the standard deviation of the slope, the 95% confidence interval for the slope can be found as the range of values within two standard deviations of the slope, which due to the very low standard deviation, is just [$3.61 times 10^4" M"^(-1)" cm"^(-1) , 3.61 times 10^4" M"^(-1)" cm"^(-1)$]. The true value of 55,000 $"M"^(-1)" cm"^(-1)$ is not close to this confidence interval, suggesting strong determinate error. 
+ The limit of detection is given by $3 times sigma / m $, which in this case results in $2.40 times 10^(-6) M $. The limit of quantitation is given by $10 times sigma /m$ and is in this case $8.01 times 10^(-6) M$. The limit of linearity occurs at a higher concentration than is seen in this lab. The linear range and dynamic range both start at the limit of quantitation and extend to the limit of linearity. The sensitivity is the slope of the trendline. 
+ The absorbance values for the final diluted solution with the commercially available turmeric were 0.094, 0.102, and 0.108 across the three replicates. Using Beer's Law, the determined $epsilon_"429 nm"$ of curcumin, and the average of those absorbance values, the concentration of the final diluted solution with the commercially available turmeric is $"A"/(epsilon_"429 nm" times l) = "0.101"/ (3.61 times 10^4 M^(-1) "cm"^(-1) times "1 cm") = 2.81 times 10^(-6)$ M. Undoing the dilution, we get the original concentration at $2.81 times 10^(-6)" M" times "25 mL"/ "0.600 mL" = 1.17 times 10^(-4)$ M. Since the sample of the turmeric was initially dissolved in a 25 mL volumetric flask, we can compute the mass of curcumin by $(1.17 times 10^(-4)" mol")/ "1 L" times  "1 L"/ "1000 mL" times "25 mL" times "368.38 g"/ "mol" times "1000 mg"/ "1 g" = 1.08$ mg. Only 0.0145 g out of the 0.4587 g pill was in the solution. Scaling up to the entire pill, the mass of curcumin in the pill is $"1.08 mg" times "0.4587 g" / "0.0145 g" = 34.1$ mg.  
+ Claims were not made on the bottle about curcumin contents, but rather _curcuminoid_ content. Different curcuminoids may have different UV-vis peaks, thus although the value determined for curcumin content is outside the threshold if it were the only curcuminoid present, there is insufficient evidence to conclude the claims are false. Furthermore, the ingredients listed were 450 mg of turmeric and only 50 mg of turmeric extract, which would imply that it was largely the natural concentration. The bottle indicated that each pill was 500 mg and standardized for 95% curcuminoids, which would imply that a mass of 475mg of curcuminoids should be present. If curcumin were the only curcuminoid in the pill, the data suggests that this claim is off by an order of magnitude. 