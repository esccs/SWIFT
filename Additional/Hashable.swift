/*
In Swift, 
a Hashable is a protocol that provides a hashValue to our object. 
The hashValue is used to compare two instances.
*/

struct Employee: Hashable {
    var name: String
}

let obj1 = Employee(name: "Sandeep")
let obj2 = Employee(name: "Chowdary")

//printing hash values
print(obj1.hashValue)
print(obj2.hashValue)


//Hash Function and Combine

struct Emp: Hashable {
    var name: String
    var salary: Int

    //here we are creating hash value only for the salary.
    func hash(into hasher: inout Hasher) {
        hasher.combine(salary)
    }
}

let o1 = Emp(name: "Sandeep", salary: 30000)
let o2 = Emp(name: "Kk", salary: 30000)
print("\(o1.hashValue), \n \(o2.hashValue)")