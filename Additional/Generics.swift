/*
Swift Generics allows us to create a single function 
and class (or any other types) that can be used with different data types.

// create a generic function
func displayData<T>(data: T){
  ...
}
*/

//example 

func displayData<T>(data: T){
    print("Generic Function")
    print("Data passed: ",data)
}

displayData(data: "Sandeep")
displayData(data: 5)


//Swift Generic Class
class Information<T> {
    var data: T

    init(data: T){
        self.data = data
    }

    func getData() -> T{
        return self.data
    }
}

var intObj = Information<Int>(data: 6)
print("Generic class with Int type: ",intObj.getData())

var strObj = Information<String>(data: "Sandeep")
print("Generic class with String type:",strObj.getData())


/*
Type Constraints in Swift Generics:

if we want to use generics for some specific types 
(such as accepting data of number types) only, then we can use type constraints.
*/

func addition<T: Numeric>(num1: T,num2: T){
    print("Sum: ",num1+num2)
}

//Int:
addition(num1: 10, num2: 20)

//double
addition(num1: 10.2, num2: 10.4)

/*
Advantages:

1. Code Reusability
2. Used With Collections

*/