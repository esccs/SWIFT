/*
In Swift, an enum (short for enumeration) is a user-defined data 
type that has a fixed set of related values.
*/
/*
enum Season{
    case spring, summer, autumn, winter
}

var currentSeason: Season

currentSeason = Season.spring

print("Current Season: ", currentSeason)
*/
enum PizzaSize {
    case small, medium, large
}

var size = PizzaSize.medium

switch(size){
  case .small:
    print("I ordered a small size pizza.")

  case .medium:
    print("I ordered a medium size pizza.")

   case .large:
     print("I ordered a large size pizza.");
}

//Iterate over enum Cases
// conform Languages to caseIterable 
enum Season: CaseIterable {
  case spring, summer, autumn, winter 
}

// for loop to iterate over all cases
for currentSeason in Season.allCases {
  print(currentSeason)
}

//enum with raw value

enum Size: Int {
    case small = 10 
    case Medium = 12
    case large = 14
}

var result = Size.small.rawValue
print(result)


//enum with Associated Values

/*
sometimes we may want to attach additional information to enum values. 
These additional information attached to enum values are called associated values.
*/

enum Laptop {
    case name(String)
    case price(Int)
}
var brand = Laptop.name("HP")
print(brand)

var offer = Laptop.price(1599)
print(offer)

//Associating Multiple Values

enum Marks {
    case gpa(Double, Double, Double)
    case grade(String, String, String)
}

var marks1 = Marks.gpa(3.6,2.9,3.8)
print(marks1)

var marks2 = Marks.grade("A","B","C")
print(marks2)


//Named Associated Values

/*

enum Pizza {
  // named associated value
  case small (inches: Int)
  case medium (inches: Int)
  case large (inches: Int)
}

// pass value using provided names
var pizza1 = Pizza.medium(inches: 12)
print(pizza1)

*/

//Associated Values in Swift Statement

/*
enum Mercedes {

 case sedan(height: Double)
 case suv(height: Double)
 case roadster(height: Double)
}

var choice = Mercedes.suv(height: 5.4)

switch(choice) {
 case let .sedan(height):
   print("Height:", height)

 case let .suv(height):
   print("Height:", height)

 case let .roadster(height):
   print("Height:", height)
}

*/

/*
-> An enum cannot have both raw values and associated values at the same time.
-> The raw values of an enum must be of the same data type. 
    But associated values can be of any type.


*/