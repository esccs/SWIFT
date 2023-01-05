/*
In Swift, a protocol defines a blueprint of methods or 
properties that can then be adopted by classes (or any other types).


protocol Greet {

  // blueprint of a property 
  var name: String { get }


  // blueprint of a method 
  func message() 
} 


// conform class to Greet protocol
class Employee: Greet {

  // implementation of property
  var name = "Perry"

  // implementation of method
  func message() {
    print("Good Morning!")
  }
}
*/

protocol polygon{
    func getArea(length: Int,breadth: Int)
}

class Rectangle: polygon{
    func getArea(length: Int,breadth: Int){
        print("Area of Rectangle: ", length * breadth)
    }
}

var r1 = Rectangle()
r1.getArea(length:5,breadth:6)


//Conforming multiple Protocols

protocol sum{
    func add()
}

protocol multiple{
    func multiply()
}

class Calculator: sum,multiple{
    var num1 = 0
    var num2 = 0

    func add(){
        let result = num1 + num2 
        print("Addition Result: ", result)
    }

    func multiply(){
        let result = num1 * num2
        print("Multiplication Result: ", result)
    }
}

var calc = Calculator()
calc.num1 = 5
calc.num2 = 10 
calc.add()
calc.multiply()


//Swift Protocol Inheritance
protocol Car {
    var colorOptions: Int {get}
}

protocol Brand: Car {
    var name: String { get }
}

class Mercedes: Brand {

  // must implement properties of both protocols 
  var name: String = ""
  var colorOptions: Int = 0
}

var car1 = Mercedes()
car1.name = "Mercedes AMG"
car1.colorOptions = 4

print("Name:", car1.name)
print("Color Options:", car1.colorOptions)


//Protocol extension

protocol Brake{
    func applyBrake()
}

class Car1: Brake {
    var speed: Int = 0
    func applyBrake(){
        print("Brake Applied")
    }
}

//extend Protocol
extension Brake {
    func stop(){
        print("Engine Stopped")
    }
}

var c1 = Car1()
c1.speed = 61
print("Speed: ",c1.speed)
c1.applyBrake()

//accessing the extended protocol
c1.stop() 