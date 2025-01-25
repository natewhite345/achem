#import "../hw/template.typ" : hw, ch
#show: hw((1, 2, 3, 7, 11, 12, 13))
#let M = " M"
#let ml = " mL"
#let ppm = " ppm"
#let L = " L"
#let g = " g"
#let mg = " mg"
#let ppb = " ppb"
#let mol = " mol"
+ Potassium Ferricyanide has chemical formula #ch[K3Fe(CN)6] #cite(<ferricyanide>). Thus, the following computations can be performed:\
    #let q1_common_dim_analysis = $"1.55 ppm "#ch[K3Fe(CN)6] = frac(#ch[1.55 g K3Fe(CN)6],10^6 g "solution") times frac("1 g solution", "1 mL solution") times frac("1000 mL", "1 L") times frac("1 mol "#ch[K3Fe(CN)6], 3 times"39.098 g K" + "55.845 g Fe" + 6 times"(12.011 g C + 14.007 g N)")$
    #q1_common_dim_analysis$ times frac("1 mol "#ch[Fe(CN)6], "1 mol "#ch[K3Fe(CN)6]) = 4.71 times 10^(-6)" M ferricyanide"$\ \
    #q1_common_dim_analysis$ times frac("3 mol K", "1 mol "#ch[K3Fe(CN)6]) = 1.41 times 10^(-5)" M potassium"$\ \
+ Assuming that the solvent is water, or has approximately the same density as water: 
    $ frac("0.1 mg cadmium","1 L water") times frac("1 L", "1000 mL") times frac("1 mL water", "1 g water") times frac("1 g", "1000 mg") times 10^6" ppm" =  "0.1 ppm cadmium" $ 
    $ frac("0.1 mg cadmium","1 L water") times frac("1 L", "1000 mL") times frac("1 mL water", "1 g water") times frac("1 g", "1000 mg") times 10^9" ppm" =  "100 ppb cadmium" $ 
    $ frac("0.1 mg cadmium","1 L water") times frac("1 g", "1000 mg") times frac("1 mol cadmium", "112.41 g cadmium") = 9 times 10^(-7)" M cadmium" $ \
+ $ C_0V_0 = C_1V_1 arrow.double 0.100" M" times 10#ml = C_1 times 250#ml arrow.double C_1 = 4.00 times 10^(-3)" M" $
    $ C_1V_1 = C_2V_2 arrow.double 4.00 times 10^(-3)" M" times 15#ml = C_2 times 100#ml arrow.double C_2 = 6.00 times 10^(-4)" M" $
    $ C_2V_2 = C_3V_3 arrow.double 6.00 times 10^(-4)" M" times 20#ml = C_3 times 250#ml arrow.double C_3 = 4.80 times 10^(-5)" M" $ \ 
+ 
    + $C_0V_0 = C_1V_1 arrow.double 0.240#M times 20.0#ml = C_1 times 500#ml arrow.double C_1 = 9.60 times 10^(-3)#M$
    + $C_0V_0 = C_1V_1 arrow.double C_0 times 2.0#ml = 3.42#ppm times 100ml arrow.double C_0 = 17#ppm$\
        $17.1ppm times 2#L times frac(1,10^(6)ppm) times frac(1#g, 1ml) times frac(1000ml, 1#L) times frac(1000mg, 1#g)= 0.34mg "Ca"^(2+)$
    \ 
+ $C_0=frac(V_1,V_0) times C_1 = frac(V_1,V_0) times frac(V_2, V_1') times C_2 = frac(10ml, 2.5ml) times frac(10ml, 2.5ml) times 0.236ppb = 3.8ppb$\
    $frac(10ml, 2.5ml) times frac(10ml, 2.5ml) times 0.236ppb times frac(1#g "benzene", 10^9#g "water") times frac(1#g "water", 1ml "water") times frac(1000ml, 1#L) times frac(1mol "benzene",78.113#g "benzene") = 48 "nM" $\
    This is below PEL#sub[max].
    \ \
+
    + 4, the digits in the exponent are not significant, but the digits in the mantissa are.
    + 4, all digits are significant because trailing zeros are significant
    + 2, only the 1 and the trailing 0 are significant
    \
+ 
    + $31.3$ because in this calculation, the smallest place value for which all addends have a significant figure is the tenths place, so our answer will be rounded to the tenths place.
    + $1.2 times 10^4$ because in this calculation, the factors and divisors have 3, 2, and 3 significant figures respectively, so the answer will have the minimum which is 2 significant figures. 
    + $4.683$ because we can split the logarithm into the sum of the logarithms of the characteristic and the mantissa, which produces $0.683+4$ where the 4 is exact and infinite precision, thus we have significant figures in every addend up to the thousandths place.
    + $1.71$ because there are three significant figures in the argument
+ 



#bibliography("HMWK1 works.bib", style: "american-chemical-society")



