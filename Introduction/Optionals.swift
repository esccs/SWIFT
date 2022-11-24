import Foundation

//when we need no value int the variable we use optionals
//optionals have nil value assignemd to them
//declaration

var someValue: Int?
var someAnotherValue: Int! = 10
//forced un wraping
print(someValue as Any)
print(someAnotherValue as Any)

print("\n unwrapping values")
//unwraping values
if(someValue != nil){
    print("it has Some Value \(someValue as Any)")
}else{
    print("doesn't contain value")
}

if(someAnotherValue != nil){
 print("it has Some Value \(someAnotherValue as Any)")
}else{
    print("doesn't contain value")
}


//int format
print(someAnotherValue!)

print("\n2. optional Binding:")
//2. optional Binding: helps you to find out whether an optional contains a value or not
//if let
if let temp = someValue {
 print("it has Some Value \(temp)")
}else{
    print("doesn't contain value")
}

if let temp = someAnotherValue {
 print("it has Some Value \(temp)")
}else{
    print("doesn't contain value")
}

print("\n3. Gaurd let Statement" )
//3. Gaurd Statement 
  func testfunction(){
    let someValue:Int? = 5
    guard let temp = someValue else {
        return
    }

    print("It has some value \(temp)")
  }

  testfunction()

print("\n4.Nil - coalescing operator (??)")
//4.Nil - coalescing operator (??)
// if optional contains av it will return that value else it will return default value
var value:Int! 
var defaultValue = 10
let unwrappedValue: Int = value ?? defaultValue
print(unwrappedValue)


var value1:Int! = 100
var defaultValue1 = 10
let unwrappedValue1: Int = value1 ?? defaultValue1
print(unwrappedValue1)