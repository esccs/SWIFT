

/*
access controls are used to set the accessibility (visibility) of 
classes, structs, enums, properties, methods, initializers, and subscripts.
*/

/*

Controls         	Description
public  ----- declarations are accessible from everywhere 
private -------	declarations are accessible only within the defined class or struct
fileprivate	----- declarations are accessible only within the current swift file
internal -----	declarations are accessible only within the defined module (default)
*/

//Private 
/*
class Student {

  // private property
  private var name = "Tim Cook"

  // private method    
  private func display() {
    print("Hello from Student class")
  }
}

// create object of Student class
var student1 = Student()
    
// access name property
print("Name:", student1.name)

// access display() method 
student1.display()

here the display and the name are private so they cannot be accesse outside the
class
*/

//------- fileprivate Access Control (Only with in that file)
/*
class Student {

  // fileprivate property
  fileprivate var name = "Tim Cook"

  // fileprivate method    
  fileprivate func display() {
    print("Hello from Student class")
  }
}

// create object of Student class
var student1 = Student()
    
// access name property
print("Name:", student1.name)

// access display method 
student1.display()
*/

//internal Access Control --- accessable within the module
/*
A module is a collection of types (classes, protocols, etc) and resources (data).
 They are built to work together and form a logical unit of functionality.



 class Student {

  // define internal property
  internal var name = "Tim Cook"
}

// create object of Student class
var student1 = Student()
  
// access name property
print("Name:", student1.name)
*/