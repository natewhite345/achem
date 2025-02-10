#let safety = (..vals) => table(
  columns: (auto, auto, auto, auto, auto),
  align: center,
  table.header(..("Reagent Name", "Reqd. PPE", "Critical Safety Hazards", "Reactivity", "Disposal").map(v => [*#v*])),
  ..vals)