#import "template.typ": lr
#show: lr(2, "Quantitative Dilution and Solution Preparation")
#let sigfigsadd = (nums) => calc.min(..nums.map((v) => v.split(".").at(1).len()))
#let avg = (d) => d.map(float).sum()/d.len()
#let avg_r = (d) => calc.round(avg(d), digits: sigfigsadd(d))
#let std_dev_r = (d) => calc.round(
    calc.sqrt(
      (d.map(float).map(v => calc.pow(v - avg(d),2)).sum())/(d.len()-1)), 
    digits: sigfigsadd(d))
#let observations = ("0.083", "0.083", "0.083")
#let per = "/"
#let eq = "="
#let five = 5
#let six = 6
#let tentothe = p => $10^(p)$
+ I expect the concentration of the final solution to be  $40" mg/mL" times frac(0.05" mL", 10" mL") times frac(0.25" mL", 25" mL") = #(40*0.05/10*0.25/25)" mg/mL" =  #(40*0.05/10*0.25/25)" mg/mL" times 10^6" ng/mL" = 2 times 10^3" ng/mL"$. The absorbance can be calculated as follows (copied from prelab)\
  $A_lambda=c epsilon_lambda l$\
    $A_(503" nm")=(2.00 times 10^3" ng/mL") (2.59 times 10^4" L" "mol"^(-1)" cm"^(-1))(1.0" cm")$\
    $A_(503" nm")=(2.00 times 10^3" ng/mL") (10^(-9)" g/ng") (10^3"mL/L")(2.59 times 10^4" L" "mol"^(-1)" cm"^(-1))(1.0" cm")$\
    $A_(503" nm")=(2.00 times 10^(-3)" g/L") (2.59 times 10^4" L" "mol"^(-1)" cm"^(-1))(1.0" cm")$\
    $A_(503" nm")=(20.0" g") (2.59" mol"^(-1))(1.0)$\
    $A_(503" nm")=(20.0" g") (2.59" mol"^(-1))(1.0)(1" mol")/(496.42" g")$\
    $A_(503" nm")=0.10$\
+ The mean absorbance of the diluted solution is #avg_r(observations) with a standard deviation of 0.000. If the standard deviation were not zero, the same multiplications and divisions would be performed on it to scale it along with the mean.
  $A_(503" nm")=0.10$\
// #image("lab2procedure.png")