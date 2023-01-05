
class Person {
    var age: Int

    init(){
        self.age = 20
    }

    init(age: Int){
        self.age = age
    }

    func getAge() -> Int {
        return age;
    }
}


var person1 = Person()
var person2 = Person(age: 22) 

print("Person1 age: ",person1.getAge())
print("Person2 age: ",person2.getAge())

/*
Swift convenience Initializer

the initializer we defined were primary initializers of the class. 
These primary initializers are also called designated initializers.

-> we can also define a secondary/supporting initializer for a class called convenience initializer.

-> To define a convenience initializer, we use the convenience keyword before the initializer.

*/
print("Swift convenience Initializer")
class University {
    var name: String
    var rank: String

    init(name: String, rank: String){
        self.name = name
        self.rank = rank
    }

    //define convenience Initializer
    convenience init(){
        self.init(name: "SASTRA", rank: "1st")
    }
}

var university1 = University()
print(university1.name)
print(university1.rank)


/*
Failable Initializer

In some cases initializers might or might not work, this is called a failable initializer.

We write a failable initializer by placing a question mark (?)
after the init keyword and return nil if something goes wrong.

*/

class File {
    var folder: String

    //failable initializer
    init?(folder: String){

        if folder.isEmpty {
            print("Folder Not Found")
            return nil
        }
        self.folder = folder
    }
}

// create folder1 object
var file  = File(folder: "")
if (file != nil) {
  print("File Found Successfully")
}
else {
  print("Error Finding File") // 2nd output
}


//Memberwise Initializer for structs
print("-----Memberwise Initializer for structs--------")
struct per {
    var name: String
    var age: Int
}

var per1 = per(name: "Sandeep", age: 22)
print("Name: \(per1.name)\n Age: \(per1.age)") 