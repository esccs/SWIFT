

//1.Creating an Empty Dictionary

var namesOfIntegers: [Int: String] = [:]
// namesOfIntegers is an empty [Int: String] dictionary

namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]


//2.Creating a Dictionary with a Dictionary Literal
var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]

//3.Accessing and Modifying a Dictionary

//count
print("The airports dictionary contains \(airports.count) items.")
// Prints "The airports dictionary contains 2 items."

//if statement
if airports.isEmpty {
    print("The airports dictionary is empty.")
} else {
    print("The airports dictionary isn't empty.")
}
// Prints "The airports dictionary isn't empty."

// modification using literal
airports["LHR"] = "London"

airports["LHR"] = "London Heathrow"


//updatevalue() function for Dictionaries

if let oldValue = airports.updateValue("Dublin Airport",forKey:"DUB"){
    print("the old value for DUB was \(oldValue)")
}


//You can use subscript syntax to remove a key-value pair from a dictionary by assigning a value of nil for that key:

airports["APL"] = "Apple International"
// "Apple International" isn't the real airport for APL, so delete it
airports["APL"] = nil
// APL has now been removed from the dictionary

/*
iteration over dictionaries
*/

for (airport,airportName) in airports{
    print("\(airport): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}
// Airport code: LHR
// Airport code: YYZ

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
// Airport name: London Heathrow
// Airport name: Toronto Pearson


// getting the array of keys and values

let airportCode = [String](airports.keys)

print("airport Codes: \(airportCode)")

let airportNames = [String](airports.values)
print("airport Names: \(airportNames)")


/*

Method       	Description
sorted()--------sorts dictionary elements
shuffled()------changes the order of dictionary elements
contains()-------checks if the specified element is present
randomElement()--returns a random element from the dictionary
firstIndex()-----returns the index of the specified element
*/