/*
In swift, a closure is a specific type of function 
without the function name.

syntax: 

{ (parameters) -> returnType in
   // statements
}
*/



var greet = {
    print("Hello World")
}

greet()


//Closure Parameters

let greetUser = { (name:String) in
      print("Hii, \(name)")
}

/*
Unlike function, we call the closure without mentioning the parameter name.
*/
greetUser("Sandeep")

//Closure that return a value
var findSquare = {(num: Int) -> Int in
return num * num
}

var square = findSquare(10)
print("Square of 10: \(square)")

/*
In Swift, we can create a function that accepts closure as its parameter.

syntax:

// define a function
func grabLunch(search: () -> ()) {
  …
  // closure call
  search()  
}
*/

//Closure Properties as a function parameter

func grabLunch(search: ()->()) {
    print("Let's go out for lunch")

    search()
}

grabLunch(search: {
    print("AZ pizza: 2 miles")
})


//Tailing Closure
/*
In trailing closure, if a function accepts a closure as its last parameter,

// function definition
func grabLunch(message: String, search: ()->()) {
  ...
}
We can call the function by passing closure as a function body without mentioning the name of the parameter. For example,

// calling the function
grabLunch(message:"Let's go out for lunch")  {
  // closure body
}
Here, everything inside the {...} is a closure body.

*/

print("\n tailing closure")
func grabLunch2(message: String, search:()->()){
    print(message)
}

grabLunch2(message: "Let's go out for Lunch"){
    print("AZ pizza 3 miles out")
}

print("\n AutoClosure:")
//we cannot pass argument to auto closure 
func display(greet: @autoclosure ()->()){
    greet()
}

display(greet: print("Hello World"))
