import Foundation
/*
In Swift, there are two types of function:

User-defined Function - We can create our own functions based on our requirements.
Standard Library Functions - These are built-in functions in Swift that are available to use.

syntax: 

 
func functionName(parameters)-> returnType {
  // function body 
}

func - keyword used to declare a function
functionName - any name given to the function
parameters - any value passed to function
returnType - specifies the type of value returned by the function
*/

func greet(){
    print("Hello World")
}

greet()


//Function with two parameters

func addNumbers(num1: Int,num2:Int) -> Int{
    let sum = num1 + num2
    return sum
}

var addingNumbers = addNumbers(num1: 3, num2: 4)
print("\(addingNumbers)")



//Square of a number
func  square(num:Int) -> Int{
    return num * num
}

for i: Int in 0...4{
    var res: Int = square(num: i)
    print("\(res)")
    
}


//Swift Library Functions

// sqrt computes the square root
var squareRoot = sqrt(25)

print("Square Root of 25 is",squareRoot)

// pow() comptes the power
var power = pow(2, 3)

print("2 to the power 3 is",power)




//functions with defalut parameters
print("\nfunctions with defalut parameters")

func addNum(a:Int = 10, b:Int=20) -> Int{
    return a + b;
}

let res1 = addNum(a:5)
var res2:Int  = addNum(b:20)
var res3:Int = addNum()

print("\(res1), \(res2), \(res3)")


//Function With Argument Label
print("\nFunction With Argument Label")

func sum(of a: Int, and b: Int) {
  print("Sum:", a + b)
}

sum(of: 2, and: 3)

//Ommiting the label

func sum1(_ a: Int, _ b: Int) {
  print("Sum:", a + b)
}
sum1(2,3)


/*
Function with variadic parameters

Sometimes, 
we do not know in advance the number of arguments that will be passed into a function. 
To handle this kind of situation, 
we can use variadic parameters in Swift.

Variadic parameters allow us to pass a varying number of values during a function call.

We use the ... 
character after the parameter's type to denote the variadic parameters. For example,

*/

func sum3(numbers: Int...){
    var result = 0;
    for num in numbers {
        result+=num
    }

    print("Varadic in function: ",result)
}

// function call with 3 arguments
sum3(numbers: 1, 2, 3)

// function call with 2 arguments
sum3(numbers: 4, 9)


//Function With inout Parameters

/*
When we define a function parameter, 
the function parameter cannot be modified inside the function body.


 the parameter behaves as a constant value.
*/

func changeName(name: inout String) {
  if name == "Ross" {
      name = "Joey"
  }
}

/*
While calling a function with inout parameter, 
we must use the ampersand(&) sign before a variable name passed as an argument.
*/
var userName = "Ross"
print("Before: ", userName)

changeName(name: &userName)

print("After: ", userName)


//Function with Return Multiple Values
print("\nFunction with Return Multiple Values")

func compute(number: Int) -> (Int,Int,Int) {
    return (number,(number * number), (number * number * number))
}

var result = compute(number: 10)
print("Number: ",result.0)
print("Square: ",result.1)
print("Cube: ",result.2)