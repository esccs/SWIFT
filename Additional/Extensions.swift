/*
if we want to use generics for some specific types 
(such as accepting data of number types) only, then we can use type constraints.

// class definition 
class Temperature {
  ...
}

// extension of Temperature class
extension Temperature {

  // add new methods 
} 

*/

//class Extensions

class Temperature {
    var celsius: Double = 0
     func setTemperature(celsius: Double){
        self.celsius = celsius
     }
}

extension Temperature{

    func convert(){
        let farenheit = (celsius * 1.8) + 32
        print("Farenheit: ",farenheit)
    }
}

//class initial
let temp1 = Temperature()
temp1.setTemperature(celsius: 20.5)

temp1.convert()


//Computed Property In Extension

class Circle{
    var radius: Double = 0
}

extension Circle{
    var area: Double{
        return 3.14 * radius * radius
    }
}

let circle = Circle()
circle.radius = 5
print("Area: ", circle.area)

/*
Protocol Extension

*/
protocol Brake {
    func applyBrake()
}

extension Brake{
    func applyBrake(){
        print("Brake Applied")
    }
}

class Car: Brake{
    var speed: Int = 0 
}

let car1 = Car()
car1.speed = 61
print("Speed: ", car1.speed)

//accessing the protocol Method
car1.applyBrake()