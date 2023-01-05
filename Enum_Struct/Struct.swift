/*
In Swift, a struct is used to store variables of different data types.

-> A struct definition is just a blueprint. 
   To use a struct, we need to create an instance of it.
*/

struct Person {
    var name = ""
    var age = 0
}

var person1 = Person()
person1.age = 22
person1.name = "Sandeep"

print("Name: \(person1.name) and Age: \(person1.age)")

//Swift Memberwise Initializer

struct Employee {
    var EmployeeID: Int 
}

var emp1 = Employee(EmployeeID: 101)
var emp2 = Employee(EmployeeID: 102)

print("Employee 1 Id", emp1.EmployeeID)
print("Employee 2 Id", emp2.EmployeeID)


//Function Inside Swift Struct

struct Car {
    var gear = 0

    func applyBrake(){
        print("Applying Hydraulic Breaks")
    }
}

var car1 = Car()

car1.gear = 5
print("Gear Number: \(car1.gear)")
//access Methods
car1.applyBrake()