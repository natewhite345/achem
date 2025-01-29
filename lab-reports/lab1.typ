#import "template.typ": lr
#show: lr(1, "An Introduction to Good Analytical Lab Technique")
#show link: underline
=== Part A 
#let KW_ANALYTICAL = "Analytical"
#let KW_TOP_LOADING = "Top-Loading"
#let data = (
  "P-1000": (
    (KW_ANALYTICAL): ("1.0037","1.0106","1.0168"),
    (KW_TOP_LOADING): ("1.007", "1.008", "1.010")
  ),
  "10 mL graduated cylinder": (
    (KW_ANALYTICAL): ("0.9670", "0.9595", "0.9167"),
    (KW_TOP_LOADING): ("0.900","1.008", "1.049")
  ),
  "P-200": (
    (KW_ANALYTICAL): ("1.0064","1.0154","1.0191"),
    (KW_TOP_LOADING): ("1.030","1.034","1.030")
  )
)

#let t1row = (name, analytical, toploading) => {
  let ct = calc.min(analytical.len(), toploading.len())
  return ( table.cell(rowspan: ct)[#name], ..(analytical.zip(toploading, exact:true).enumerate().map(((i,(a,t))) => ([#str(i+1)],[#a], [#t]))).flatten())
}

#table(
  columns: (auto, auto, auto, auto),
  align: center + horizon,
  table.header("Delivery instrument", "Sample #", "Mass (Analytical Balance, g)", "Mass (Top Loading Balance, g)"),
  ..data.pairs().map(((delivery_instrument, data)) =>{
    t1row(delivery_instrument, data.at(KW_ANALYTICAL), data.at(KW_TOP_LOADING))
  }).flatten()
)
#let sigfigsadd = (nums) => calc.min(..nums.map((v) => v.split(".").at(1).len()))
#let avg = (d) => d.map(float).sum()/d.len()
#let avg_r = (d) => calc.round(avg(d), digits: sigfigsadd(d))
#let std_dev_r = (d) => calc.round(
    calc.sqrt(
      (d.map(float).map(v => calc.pow(v - avg(d),2)).sum())/(d.len()-1)), 
    digits: sigfigsadd(d))
#let avg_computation = (d) => {
    let res = calc.round(d.map(float).sum()/d.len(), digits: sigfigsadd(d))
    return [Average: $overline(x)$ = #math.frac(math.sum + $x_i$, [N]) = #math.frac(d.map(v=> v+ math.frac("g","mL")).join(" + "),[#d.len()]) = #res g/mL]
  }
#let stddev_computation = (d) => {
    return [Standard Deviation: s = $sqrt(frac(sum (x_i-overline(x))^2, N-1 )) =$\ \ $sqrt(frac(#d.map(v => $(#v g/(m L) - #avg_r(d) g/(m L))^2$).join("+"), 3-1 ))$ = #std_dev_r(d) g/mL]
  }
#let avg_std_dev = (d) => [#avg_r(d) #sym.plus.minus #std_dev_r(d)] 

+ \ #table(
      columns: (auto, auto, auto),
      align: center + horizon,
      table.header(table.cell(rowspan: 2, "Delivery instrument"), table.cell(colspan: 2, "Average density (g/mL) " + math.plus.minus +" std. dev."), "Analytical Balance" , "Top Loading Balance"),
      ..data.pairs().map(((delivery_instrument, data)) =>{
        (delivery_instrument, avg_std_dev(data.at(KW_ANALYTICAL)), avg_std_dev( data.at(KW_TOP_LOADING)))
      }).flatten())\
  #data.pairs().map(((instrument, data)) => {
  return [
- #instrument: 
    #data.pairs().map(((scale,val)) => {
      return [
- #scale: 
  - #avg_computation(val)\ \
  - #stddev_computation(val)]
    }).join("\n")
  ]
}).join("\n")\ \
+ The data suggests that the most precise combination was using either the P-200 or the P-1000 with the top-loading balance; with both having a standard deviation of 0.002. The most accurate combination was the P-1000 and the top-loading balance, with the average being 1.008 g/mL, which is 0.011 g/mL away from the true density of water at 21.3#math.degree;C, 0.997 g/mL (as computed using the table in the lab handout from  Table 1.5 R.A. Ray, Jr.; A.L. Underwood. Quantitative Analysis Laboratory
Manual. Prentice-Hall: N.J., 1986.). Thus, the most reliable combination by both metrics is the P-1000 and the top-loading balance.\ \ 
+ The results for the delivery instruments agrees with what was expected. The 10 mL graduated cylinder was less precise and less accurate since it is not a volumetric tool. The precisions of the P-1000 and P-100 were comparable. An unexpected result of the lab was the top-loading balance outperforming the analytical balance in terms of both accuracy and precision. 
\ \ \
=== Part B
#let data_partb = ("0.4828", "0.4942", "0.4940", "0.4942", "0.4953" )
+ #table(
  columns: (auto, auto, auto), 
  align:center+horizon,
  table.header("Sample", "Weight delivered (g)", "Calc. volume delivered ("+sym.mu+"L)"),
  ..(data_partb.enumerate().map(((i,v)) => (i, v, v.split(".").at(1).split("").slice(0,-1).join(last: "."))).flatten().map(v => [#v])))
  According to the manufacturer, the % error of the mean for the P-1000 pipette is 0.8%, which means the range for 500 #sym.mu;L is #(500-500*0.8/100) #sym.mu;L - #(500+500*0.8/100) #sym.mu;L. This does not compare well with the average of the data, #avg_r(data_partb) #sym.mu;L, indicating the accuracy of the pipette is not within manufacturer specifications. This systemic underestimate of weight may be a result of the extremely dry conditions in the lab causing water to evaporate while in the weigh boat. The manufacturer specifies the standard deviation should be 3.0 #sym.mu;L. This compares well with the experimental standard deviation, #std_dev_r(data_partb) #sym.mu;L
+ To test the contributions of operator error as compared to equipment error, one can repeat the procedure with a different piece of equipment and see if the error remains, or alternately, have a different experimenter repeat the procedure using the same micropipette.
