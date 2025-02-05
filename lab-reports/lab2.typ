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
    #image("lab2procedure1.png")
    #image("lab2procedure2.png")
    #image("lab2lukas1.png")
    #image("lab2lukas2.png")
+ The mean absorbance of the diluted solution is #avg_r(observations) with a standard deviation of 0.000.\
  The concentration of the final solution can be found as follows:\
  $A_(503" nm")=c epsilon_lambda l$\
  $0.083 = c times (2.59 times 10^4" L" "mol"^(-1)" cm"^(-1))(1.0" cm")$\
  $c= 0.083 / ((2.59 times 10^4" L" "mol"^(-1)" cm"^(-1))(1.0" cm"))$\ 
  $c= 3.2 times 10^(-6)" mol/L" = 3.2 times 10^6" mol/L" times (496.42" g")/(1" mol") times (1" L")/(1000" mL") times (1000" mg")/(1" g") = 0.0016" mg/mL"$\
  The concentration of the initial solution can be found by reversing the serial dilution calculation:
  $0.0016" mg/mL" times frac(25" mL", 0.25" mL") times frac(10" mL", 0.05" mL") = 32" mg/mL" plus.minus 0$. \ 
  This is significantly less than the expected concentration of 40.0 mg/mL, which is likely a result of operator error from filling a volumetric flask past the mark, or methodic error from water left from rinsing the volumetric flasks excessively diluting the sample.
+ This exercises involved the use of lab skills such as reading and writing SOPs, serial dilution, using a UV-Vis spectrophotometer, and performing calculations using Beer's Law. 
+ This lab taught me about being specific about steps in a procedure, being more careful when dispensing with a transfer pipette, and about the fixed point mode of the UV-Vis spectrophotometer. 
+ It appears that my partner was able to execute my SOP without issue. The critical comments he left related to specifying the need to avoid contaminating the stopper of the volumetric flask by setting it on the bench as well as a lack of detail with the instructions on how to use the spectrophotometer. He left an appreciative comment related to the diagram of the dilution scheme provided at the top of the SOP. In the future, I should include more detail on what to select in the menus of the spectrophotometer as he did on his SOP. It appears that either the sample or both of our SOPs are flawed since we both got similar absorbance values, with his absorbance values being 0.082 #math.plus.minus 0.000. 
