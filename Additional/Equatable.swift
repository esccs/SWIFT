/*
In Swift, 
an Equatable is a protocol that allows two objects to be compared using the == operator. 
The hashValue is used to compare two instances.
*/

// conform Employee to Equatable
struct Employee: Equatable {
    
    var name: String
    var salary: Int

  // create a equatable function to only compare age property         
  static func == (lhs: Employee, rhs: Employee) -> Bool {
    return lhs.salary == rhs.salary 
  }
}

// initialize two objects with different property values 
let obj1 = Employee(name: "Sabby", salary: 40000)
let obj2 = Employee(name: "Sabby", salary: 40000)
let obj3 = Employee(name: "Cathy", salary: 40000)

// compare obj1 and obj2
if obj1 == obj2 {
    print("obj1 and obj2 are equal")
}
else {
    print("obj1 and obj2 are not equal")
}

// compare obj1 and obj3
if obj1 == obj3 {
    print("obj1 and obj3 are equal")
}
else {
    print("obj1 and obj3 are not equal")
}