#import "template.typ" : lr, sigfigsadd, roundsigfigs, sigfigsofnumber, avg_computation, stddev_computation, avg, avg_r
#show: lr(4, "Mohr Titration of Sodium in Pickles")


#let stdtitration = (
  // NaCl mass (g), start titration volume, end titration volume (mL AgNO_3)
  ("A", "0.1034", "24.30", "42.42"),
  ("B", "0.0992", "9.18", "26.15"),
  ("C", "0.0982", "26.39", "43.52"),
)
#let agno3concentration = (m, s, e) => decimal(m)/(decimal(e) - decimal(s))/decimal("58.443")*1000
#let agno3concentration_r = (m, s, e) => roundsigfigs(agno3concentration(m,s,e),
  calc.max(sigfigsofnumber(m), 1+sigfigsadd((s,e))))
+ #stdtitration.map(((a, m, s,e)) => 
  [Standard #a: #math.frac([#m g NaCl], [#e mL - #s mL ]) $times "1000 mL"/"1 L" times "1 mol NaCl"/"58.443 g NaCl" times "1 mol AgNO"_3 / "1 mol NaCl" = #agno3concentration_r(m,s,e)$ M AgNO#sub[3]]
  ).join("\n\n")

  #let agno3concentrations_r = stdtitration.map(((_,m,s,e))=> str(agno3concentration_r(m,s,e)))

  \
  #avg_computation(agno3concentrations_r, units: [M AgNO#sub[3]])

  #stddev_computation(agno3concentrations_r, units: [M AgNO#sub[3]])\

#let pickletitration = (
  ("1", "11.20", "30.37"),
  ("2", str(decimal("30.68")-(decimal("49.00")-decimal("19.30"))), "20.58"),
  ("3", "20.84", "40.27")
)
#let picklecalc = (s, e) => (decimal(e) - decimal(s))*decimal(avg(agno3concentrations_r))/decimal("1000")*decimal("22.99") 
#let picklecalc_r = (s, e) => roundsigfigs(str(picklecalc(s,e)), calc.max(3, 1+sigfigsadd((s,e))) )
+ #pickletitration.map(((a, s, e)) => 
    [Pickle Aliquot #a: (#e mL - #s mL) $times #avg_r(agno3concentrations_r)" M AgNO"_3 times "1 L"/"1000 mL" times "1 mol Na"/ "1 mol AgNO"_3 times "22.990 g Na"/ "1 mol Na" = #picklecalc_r(s,e)$ g Na]
  ).join("\n\n")\ \
  #let pickleconcs = pickletitration.map(((_, s, e)) => picklecalc_r(s,e)).map(str)
  #avg_computation(pickleconcs, units: "g Na")\ \
  
  #stddev_computation(pickleconcs, units: "g Na")

