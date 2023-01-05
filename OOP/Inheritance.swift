import Foundation
/*
In Swift, inheritance is an is-a relationship. 
That is, 
we use inheritance only if there exists an is-a relationship between two classes.


-> Car is a Vehicle
-> Apple is a Fruit
-> Cat is an Animal
*/
class Animal {
    var name:String = ""

    func eat(){
        print("I can Eat")
    }
}

//inherit from Animal
class Dog: Animal {
    func display(){
        print("name: ",name)
    }

    override func eat(){
        super.eat()
        print("I eat Dog Food")
    }
}

var labrador = Dog()

labrador.name = "Rohu"
labrador.eat()
labrador.display()


class RegularPolygon {
    func calculatePerimeter(length: Int, sides: Int){
        var result = length * sides
        print("Perimeter: ", result)
    }
}

class RegularSquare: RegularPolygon {
    var length = 0
    var sides = 0

    func calculateArea(){
        var area = length * length
        print("Regular Square Area: ",area)
    }
}

class RegularTriangle: RegularPolygon {
    var length = 0.0
    var sides = 0.0
    func calculateArea(){
        var area = (sqrt(3)/4) * (length * length)
        print("Regular Triangle Area:", area)
    }
}

var shape = RegularSquare()
shape.length = 4
shape.calculateArea()
shape.calculatePerimeter(length: 3,sides:4)

var shape2 = RegularTriangle()
shape2.length = 2
shape2.calculateArea()
shape2.calculatePerimeter(length: 2,sides:3)
