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
#import "@preview/cetz:0.3.2"
#import "@preview/cetz-plot:0.1.1": plot
