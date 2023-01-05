/*
A Swift variable or constant defined inside a class or struct are called properties.

*/

class Person {

 // define two properties
 var name: String = ""
 var age: Int = 0
}

var person1 = Person()

// assign values to properties
person1.name = "Kevin"
person1.age = 42

// access properties
print("Name:", person1.name)
print("Age:", person1.age)


//Swift Computed property


class Calculator{
    var num1:Int = 0
    var num2:Int = 0

    //Computed Properties
    var sum: Int{
        get{
            num1+num2
        }

        set(modify){
        num1 = (modify+10)
        num2 = (modify+20)
        }

    }
}

var obj = Calculator()
obj.num1 = 20
obj.num2 = 50

// get value
print("Get value:", obj.sum)

// provide value to modify
obj.sum = 5

print("New num1 value:", obj.num1)
print("New num2 value:", obj.num2)

//Swift Static Properties
print("Swift Static Properties")
class University{
    static var name: String=""
    
    //non-static property
    var founded: Int = 0
}
var obj1 = University()

University.name = "SASTRA DEEMED TO BE UNIVERSITY"
print(University.name)

obj1.founded = 1997
print(obj1.founded)