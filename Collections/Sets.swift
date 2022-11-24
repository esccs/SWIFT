import Foundation

//Creating and Initializing an Empty Set

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")

letters = []

// Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]

favoriteGenres.insert("Jazz")

//if let
if let removedGenere = favoriteGenres.removed("Rock"){
    print("\(removedGenere)? I'm over it.")
}else{
    print("I never much cared for that")
}

// contains function
if favoriteGenres.contains("Funk"){
    print("-----")
}else{
    print("-------")
}

//iteration

for genere in favoriteGenres{
    print("\(genere)")
}

//sorted function for sets

for genere in favoriteGenres.sorted(){
    print("\(genere)")
}

//*** Set Operations ***

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]


//Set Membership and Equality
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true

/*
Method	    Description
sorted()	sorts set elements
forEach()	performs the specified actions on each element
contains()	searches the specified element in a set
randomElement()	returns a random element from the set
firstIndex()	returns the index of the given element
*/