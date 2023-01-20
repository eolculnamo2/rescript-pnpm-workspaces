// import raw for just importing a css file
%%raw("import './App.css'")

// import with @module for import interpo when you want to define a variable
@module("./assets/react.svg") external reactLogo: string = "default"

// @genType generates a tsx file for main.tsx to understand.
// shouldn't be needed anywhere else unless interacting with TS again
@react.component @genType
let make = () => {
  <div className="App"> {Math.addFloat(2.3, 3.5)->Belt.Float.toString->React.string} </div>
}
