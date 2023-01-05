
//Nested Function with parameters
// outer function
func addNumbers() {
  print("Addition")

  // inner function
  func display(num1: Int, num2: Int) {
      print("5 + 10 =", num1 + num2)
  }

  // calling inner function with two values
  display(num1: 5, num2: 10)
}

// calling outer function
addNumbers()

//--------------------------------\\

/*
Here, the return type (Int, Int) -> Int specifies that the outer function returns a function with

-> two parameters of Int type and
-> a return value of Int type.

*/

func operate(symbol: String) -> (Int,Int) -> Int {
    func add(num1:Int,num2:Int) -> Int{
        return num1 + num2
    }

    func subtract(num1:Int,num2:Int) -> Int {
        return num1 - num2
    } 

    let operation = (symbol == "+") ? add : subtract
    return operation 
}

let operation = operate(symbol:"+")
let res = operation(8,9)
print("result: ",res)
