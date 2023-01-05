//Closed Range
print("Closed Range")
for i in 1...4{
    print(i)
}

//Half Open Range
print("\n Half Open Range")
for numbers in 1..<4{
    print("\(numbers)")
}


//one sided Range
let range1 = ..<2
print(range1.contains(-1))


let range2 = 2...
print(range2.contains(33))


let languages = ["swift","Java","C"]

print(languages[0...2])
