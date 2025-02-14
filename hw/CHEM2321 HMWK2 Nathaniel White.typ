#import "template.typ": hw
#show: hw((34,39,42,50))

+ Solution A has a peak around 410nm, which is violet. If it absorbs violet, then the apparent color will be yellow. Solution B has a peak around 490nm, which is blue. If it absorbs blue, then the apparent color will be orange. Solution C has a peak around 590nm, which is yellow. Thus the apparent color will be violet. Solution D has a peak around 720nm, which is red, but has a very broad left shoulder, so the apparent color will be blueshifted from bluegreen to blue. 
+ 
  + We can rearrange Beer's Law from $A_(lambda)=epsilon_(lambda)c l$ to $c = A_(lambda)/(epsilon_(lambda)l)$. Substituting in values from the problem yields $0.427/(6.130" M"^(-1)"cm"^(-1) times "1.000 cm") = 6.97 times 10^(-5)$ M. 
  + $c times frac("1.00 mL", "10.00 mL") = 6.97 times 10^(-5)" M" arrow.double c = 6.97 times 10^(-4)" M"$
  + $6.97 times 10^(-4)" M" * 5" mL" times frac("1 L", "1000 mL") times "292.16 g/mol" times "1000 mg"/"1 g" = 1.02$ mg
+ First, let's determine the concentration in the 25 mL solution:
  $ (c times "25 mL"/ "50 mL")/ 0.1 = (c times "25 mL"/"50 mL" + "5 mM" times "5 mL"/ "50 mL") / 0.6 $
  $ 3c = 0.5c + 0.5" mM" $
  $ 2.5c = "0.5 mM" $
  $ c = "0.2 mM" $
  Now, let's determine how many grams of ferrous are in the original sample. We know that the 25 mL solution is an aliquot of the 100 mL solution, and thus has the same concentration. The 100 mL solution contained the entire sample, thus we can represent the amount of ferrous in the original sample as:
  $ "0.2 mM" times "100 mL"  = ((0.2 times 10^(-3)" mol")/"1 L" times "1 L"/"1000 mL" times "55.845 g"/"1 mol") times "100 mL" = 5.585 times 10^(-3)" g" $
  We can then divide by the original mass of 5.000 g to get a mass percentage of 0.1117%.
+ 
  + Light at 430 nm is violet-blue.
  + Light at 600 nm is orange
  + A substance absorbing violet-blue light will appear yellow
  + A substance absorbing orange light will appear blue
  + We can set up a system of two equations using Beer's Law and the additivity of absorbances -- one for each wavelength. 
    $ A = epsilon c l $
    $ A_1 + A_2 = (epsilon_1 c_1 + epsilon_2 c_2)l $ 
    The l is just 1.000 cm, so it drops out aside from canceling part of the units of the $epsilon$. We can substitute in values for $epsilon_1$, $epsilon_2$, and $A_1+A_2$" from this table to generate an equation for each row, and then solve the system by transforming a matrix of these values to reduced row-echelon form. 
    #table(columns: (auto, auto, auto, auto), align:center, [], table.cell(colspan: 2 , [*Molar Absorptivities (M#super[-1] cm#super[-1])*]), [],..("Wavelength (nm)", "Species 1 ", "Species 2","Absorbance").map(v => [*#v*]),
    ..(430, "2.25 x 10^3", 6120, 1.27, 600, "8.30 x 10^3", 1220, 1.04).map(v => [#v]))
    $ "rref("mat(delim: #("[", "]"), "2.25 x 10^3", 6120, 1.27; "8.30 x 10^3", 1220, 1.04, )) = mat(1, 0, 1.00 times 10^(-4); 0, 1, 1.71 times 10^(-4)) $
    Reading this, and readding appropriate units, we get the concentration of 1 to be $1.00 times 10^(-4) M $ and the concentration of 2 to be $1.71 times 10^(-4) M$ 


