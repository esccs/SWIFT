import Foundation

let someCharacter: Character = "S"
let someString: String = "Swift is Fun"

//Comparing String

let str1 = "Hello, world!"
let str2: String = "I love Swift"
let str3: String = "Hello, world!"

print(str1==str2);
print(str1==str3)


//joining two String

var greet = "Hello"
var name = "Sandeep"

greet.append(" ")
greet.append(name)
print(greet)

var nickName = " Sandy"
greet+=nickName

print(greet)

if(!greet.isEmpty){
    print(greet,
    "\n First letter to captial: ",greet.capitalized,
    "\n uppercase: ",greet.uppercased(),
    "\n lowercase: ",greet.lowercased(),
    "\n hasPrefix: ",greet.hasPrefix("Hel"),
    "\n hasSuffix: ",greet.hasSuffix("dy"))
    print("\n")
}

//String interpolation
let x = "Swift"

var message = "This is \(x) prpgramming"
print(message)

//multi line String

var str:String = """
Hii Sandeep Eadara 
nice to meet youX
have a good evening
"""
print(str)

//Creating String instance
var y = String()