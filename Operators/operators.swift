import Foundation

//?: Ternary operator
var age = 10
var vote:Bool = (age > 18) ? true : false
print(vote)

//?? nil-coalescing Operator -- checks whether a optinal contains a value or not

// ... range operator : defines a range contaning values

//nested ternary operator

let num = 7
let result = (num==0) ? "Zero" : (num > 0) ? "positive":"negative"

print(result)

// Bitwise Operators

// program to print binary value

var example = 10
while(example > 0){
    var some  = example%2
    example /= 2
    print(some)
}

