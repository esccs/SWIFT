/*
class is blueprint of the object

class ClassName {
  // class definition 
}

var objectName  = ClassName()
*/

//creating a class
class Bike{
    var name = ""
    var gears = 0
}

//create object of class
var bike1 = Bike()
 print(bike1.name)
 print(bike1.gears)

 //assigning new values to the properties of the class
 class Bycycle{
    var name = ""
    var gears = 0
 }

 var bike2 = Bycycle()
 bike2.name = "Mountain Bike"
 bike2.gears = 11

 print("Name: \(bike2.name), Gears: \(bike2.gears)")

//Multiple Objects

// define a class
class Employee {

// define a property
var employeeID = 0
}

// create two objects of the Employee class
var employee1 = Employee()
var employee2 = Employee()

// access property using employee1
employee1.employeeID = 1001
print("Employee ID: \(employee1.employeeID)")

// access properties using employee2
employee2.employeeID = 1002
print("Employee ID: \(employee2.employeeID)")



//Functions inside Swift Class

class Room{
    var length = 0.0
    var breadth = 0.0

    func calculateArea(){
        print("Area of Room: ", length * breadth)
    }
}

var studyRoom = Room()

studyRoom.length = 42.0
studyRoom.breadth = 30.8

studyRoom.calculateArea()


//Swift Initializer  -- sort of Constructors in java

class Name{
    var name: String

    init(name: String){
        self.name = name
    }

    func printName(){
        print("\(name)")
    }
}

/*
Here, init() is the initializer that is used to assign the value of the name variable. 
We have used the self.name to refer to the name property of the bike1 object.
*/

var myName = Name(name: "Sandeep")
myName.printName()

/*
Classes are of reference type. This means each instance of a class shares the same copy of data. 
*/

class Bike1 {
  var color: String

  init(color:String) {
    self.color = color
  }
}

var bike3 = Bike1(color: "Blue")

var bike4 = bike3

bike3.color = "Red"
print(bike4.color)  // prints Red

//multiple arguments inside the initilizer 

class Bike2 {
  var color: String
  var name: String
  var gears: Int

  init(color:String, name: String, gears: Int) {
    self.color = color
    self.name = name
    self.gears = gears
  }
}

var suzuki = Bike2(color:"Whilte",name: "suzuki",gears: 6)

print("\(suzuki.color), \(suzuki.name), \(suzuki.gears)")