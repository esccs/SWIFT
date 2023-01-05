
/*

In Swift, two or more functions may have the same name 
if they differ in parameters (different number of parameters, 
different types of parameters, or both).

// same function name different arguments
func test() { ... }
func test(value: Int) -> Int{ ... }
func test(value: String) -> String{ ... }
func test(value1: Int, value2: Double) -> Double{ ... }

*/

func display(value: Int){
    print("Int \(value)")
}

func display(value: String){
    print("String \(value))")
}

//function call for string parameter
display(value:"Sandeep")

//function call for Int type paramater
display(value:22)



/*
 Overloading with Different Number of Parameters
*/


// function with two parameters
func display(number1: Int, number2: Int) {
   print("1st Integer: \(number1) and 2nd Integer: \(number2)")
}

// function with a single parameter
func display(number: Int) {
   print("Integer number: \(number)")
}


// function call with single parameter
display(number: 5)

// function call with two parameters
display(number1: 6, number2: 8)



/*

Function oveloading with Argument Label

*/
func argLabel(Person1 age:Int){
    print("Person1 Age: \(age)")
}

func argLabel(Person2 age:Int){
    print("Person2 Age: \(age)")
}

argLabel(Person1: 20)
argLabel(Person2: 22)