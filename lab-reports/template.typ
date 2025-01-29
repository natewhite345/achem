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
