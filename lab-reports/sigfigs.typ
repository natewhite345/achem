/*
  A Quantity is a {
    val: decimal   // the numeric value which it evaluates to
    repr_ini: content // the provided expression translated to math mode content
    repr_eval: content // the evaluated expression with the proper amount of sig figs
    repr: content // [#repr_ini = #repr_eval]
  }
*/

#assert.eq(add("5","4"), "")

// String | Quantity ... -> Quantity 
#let add(..content) = {
  let args = content.pos()
  if(args.len())
}

// Content -> Quantity
#let parse_term(content) = {
  return 
}

#let func(content) = {
  return
}

// #assert.eq(func([50 ml / 400 g/mL times AgNO#sub[3] ]), {"val": 0.1, "repr":  })




// Content -> List Content 
#let parse_factors(content) = {
  return content.text().split(" times ").map(parse_factor)
}

// MathContent -> none | (preamble: MathContent, group: MathContent, rest: MathContent)
// Isolates the first expression grouped by parentheses
#let get_first_group(content) = {
  if(content.has("children")){
    res
  }
}

// MathContent -> Quantity
#let parse_math(content) = {
  if(parentheses_free(content)){
    return parse_factors(content)
  }
  let preamble = []
  if(content.has("children")){
    for child in content.at("children")
  }
  return parse_math([#preamble#parse_math(group)#parse_math(rest)])
  assert(false, "Unmatched parentheses")
}

#assert.eq([hi#super[3]].at("children").at(0),[hi].at("children").at(0))