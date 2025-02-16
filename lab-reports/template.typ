#let lr = (num, title) => (body) => {
  let num = str(num)
  [
    #align(center)[= Lab #num: #title]
    == Questions
    #body
    == Lab Notebook
    #image("lab"+num+".png")
  ]
}

#let repeat_str(str, ct) = if (ct <= 0) {return ""} else {str+ repeat_str(str, ct - 1)} 

#assert.eq(repeat_str("0",5), "00000")

#let round(num, decimal_places) = {
  let naive = calc.round(num, digits: decimal_places)
  let rightpad = repeat_str("0",decimal_places - str(naive).split(".").at(1).len()+1)
  return str(naive)+rightpad
}

#let sigfigsadd = (nums) => calc.min(..nums.map((v) => v.split(".").at(1).len()))
#let avg = (d) => d.map(float).sum()/d.len()
#let avg_r = (d) => round(avg(d), sigfigsadd(d))
#let std_dev_r = (d) => round(
    calc.sqrt(
      (d.map(float).map(v => calc.pow(v - avg(d),2)).sum())/(d.len()-1)), 
    sigfigsadd(d))
#let avg_computation = (d, units : math.frac("g","mL") ) => {
    let res = str(round(d.map(decimal).sum()/d.len(), sigfigsadd(d)))
    let rightpad = repeat_str("0",sigfigsadd(d)-str(res).split(".").at(1).len()+1)
    return [Average: $overline(x)$ = #math.frac(math.sum + $x_i$, [N]) = #math.frac(d.map(v=> v+ units).join(" + "),[#d.len()]) = #res#rightpad #units]
  }
#let stddev_computation = (d, units : math.frac("g","mL")) => {
    return [Standard Deviation: s = $sqrt(frac(sum (x_i-overline(x))^2, N-1 )) =$\ \ $sqrt(frac(#d.map(v => $(#v #units - #avg_r(d) #units)^2$).join("+"), 3-1 ))$ = #std_dev_r(d) #units]
  }
#let avg_std_dev = (d) => [#avg_r(d) #sym.plus.minus #std_dev_r(d)] 

#let MAX_INT = int(99999999999)
#let sigfigsofnumber = (num) => {
  if(type(num) != str){
    return MAX_INT
  }
  let state = 0
  let count = 0
  for numeral in num {
    if(state == 0 and numeral in range(1,9).map(str)){
      state = 1
    }
    if(state == 1 and numeral in range(0,9).map(str)){
      count += 1
    }
  }
  return int(count)
}
#assert.eq(sigfigsofnumber(5), MAX_INT)
#assert.eq(sigfigsofnumber("52"),2)
#assert.eq(sigfigsofnumber("52.3"),3)
#assert.eq(sigfigsofnumber("52.20"),4)
#assert.eq(sigfigsofnumber("0.03"),1)
#assert.eq(sigfigsofnumber("0.0000456"),3)
#assert.eq(sigfigsofnumber("1.00000456"),9)
#assert.eq(sigfigsofnumber("0.1034"),4)

#let scientificnotation = (num, figs) => {
  let decimal_actual = num.position(".")
  if(decimal_actual == none){
    decimal_actual = num.len() -1
  }
  let numdigitsonly = num.split("").filter(v => v in range(0,9).map(str)).join()
  let firstsigfig = numdigitsonly.position(regex("[1-9]"))
  let mantissa = calc.round(decimal(numdigitsonly.at(firstsigfig)+"."+numdigitsonly.slice(firstsigfig+1)), digits: figs - 1)
  return $#mantissa times 10^#(decimal_actual - firstsigfig - 1)$
}

#assert.eq(scientificnotation("5.4", 2), $5.4 times 10^0$)
#assert.eq(scientificnotation("5.400",3), $5.40 times 10^0$)
#assert.eq(scientificnotation("54.0", 2), $5.4 times 10^1$)
#assert.eq(scientificnotation("0.0004506", 3), $4.51 times 10^#(-4)$)


#let leadingzeros = (num) => {
  return num.position(regex("[1-9]"))
}

#assert.eq(leadingzeros("453"), 0)
#assert.eq(leadingzeros("00004"), 4)
#assert.eq(leadingzeros("040"), 1)

#let roundsigfigs = (num, figs) => {
  let asStr = str(num).split(".")
  let left = asStr.at(0)
  if(figs < sigfigsofnumber(left)){
    return scientificnotation(num, figs)
  }
  if(figs == sigfigsofnumber(left)){
    return left
  }
  let right = asStr.at(1)
  if(sigfigsofnumber(left) == 0){
    if(leadingzeros(right)>3){
      return scientificnotation(num, figs)
    }
    return str(calc.round(digits: figs + leadingzeros(right), decimal(("0.", right).join())))
  }
  return str(calc.round(digits: figs - left.len(), decimal(num)))
}

#assert.eq(str(calc.round(decimal("3.100"), digits: 2)), "3.10")

#assert.eq(roundsigfigs("0.09827", 3), "0.0983")
#assert.eq(roundsigfigs("3.100", 3), "3.10")


#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.1": plot
