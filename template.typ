#let hw = (questions) => (body) => {
  set page(header: [
    #set text(8pt)
    Nathaniel White
  ])
  set enum(numbering: (..args) => {
    if args.pos().len() == 1 {
        return questions.map(v => str(v)+".").at(args.pos().at(0))
    }
    return numbering("a",args.pos().at(1))+")"
  }, full: true)
  body
}