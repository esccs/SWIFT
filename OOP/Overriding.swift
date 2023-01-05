/*
 using override keyword
*/


//preventing overriding
/*
To make a method non-overridable, 
we use the final keyword while declaring a method in the superclass. 
*/

/*
class Vehicle {

  // prevent overriding
  final func displayInfo() {
    print("Four Wheeler or Two Wheeler")
  }
}

// Car inherits Vehicle
class Car: Vehicle {

  // attempt to override
  override func displayInfo() {
    print("Four Wheeler")
  }
}

// create an object of the subclass
var car1 =  Car()

// call the displayInfo() method
car1.displayInfo()
*/

//override swift properties

class University {
    var cost: Int{
        return 500
    }
}

class Fee: University{
    override var cost: Int{
        return 10000
    }
}

var amount = Fee() 

print(amount.cost)

//In swift we can only override computed properties no the stored properties