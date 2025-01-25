#let hw = (questions) => (body) => {
  set page(header: [
    #set text(8pt)
    Nathaniel White
  ])
  set enum(numbering: (..args) => {
    if args.pos().len() == 1 {
        return questions.map(v => str(v)+".")
          .at(args.pos().at(0)-1, default: "end")
    }
    return numbering("a",args.pos().at(1))+")"
  }, full: true)
  body
}

#import "@preview/chem-par:0.0.1": chem-style
#let ch = chem-style