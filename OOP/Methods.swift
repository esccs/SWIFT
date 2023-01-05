//Swift function defined inside a class is called method

class Hall {
    var lenght = 0.0
    var breadth = 0.0
    var height = 0.0
    init(){}

    func calculateArea() {
        print("Area of Hall = ",lenght*breadth)
    }

    func calculateVolume() {
        print("Volume of Hall = ",lenght*breadth*height)
    }
}

var hall1 = Hall()

hall1.lenght = 42.5
hall1.breadth = 30.7
hall1.height = 45.2

hall1.calculateArea()
hall1.calculateVolume()

//Swift static Methods

class Calculator {
    //non-static Method
    func multiply(num1: Int,num2: Int ) -> Int{
        return num1*num2
    }
    //static Method
    static func add(num1: Int,num2: Int) -> Int{
        return num1+num2
    }
}

var obj = Calculator()

var res1 = obj.multiply(num1: 10,num2: 20)
var res2 = Calculator.add(num1: 10,num2: 20)

print("\n Multiplication: \(res1) \n Addition \(res2)")


//Swift Self Property
class Marks{
    var physics = 0
    
    func checkEligibility(physics: Int) {
        if(self.physics < physics){
            print("Not Eligible for admission")
        }else{
            print("Eligible For Admission")
        }
    }
}

var student1 = Marks()
student1.physics = 28
student1.checkEligibility(physics: 50)

/*
Mutating Methods:

if we want to modify the properties of a value type from the inside of a method, 
we need to use the mutating keyword while declaring a method.
*/

struct Employee {
    var salary = 0

    mutating func salaryIncrement(increase: Int){
        salary += increase
        print("Increased Salary: ",salary)
    }

}

var emp1 = Employee()
emp1.salary = 200000
emp1.salaryIncrement(increase: 50000)