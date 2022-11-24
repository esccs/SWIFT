
//for loop

/*
for val in sequence{
  // statements
}
*/

// access items of an array 
let languages: [String] = ["C","C++","Java","Swift"] 

for language in languages {
      print(language)
}

// using where Clause
print("\nWhere clause in for loop")
for language in languages where language != "Java"{
     print(language) 
}


//For loop in a range
print("\n for loop in range")
for i in 1...3{
    print(i)
}

// for loop with Stride Function
// stride(from:,to:,by)
print("Using stride for loops")

for i in stride(from: 1, through: 10, by: 2){
    print(i)
}

// while loop
/*
while (condition){
  // body of loop
}
*/

var currentLevel:Int = 0, finalLevel:Int = 5
let gameCompleted = true
while (currentLevel <= finalLevel) {

  if gameCompleted {
    print("You have passed level \(currentLevel)")
      currentLevel += 1
  }
}
print("Level Ends")

//repeate while loop
/*
repeat {
  // body of loop
} while (condition)
*/

// program to display numbers
var i = 1, n = 5
// repeat...while loop from 1 to 5
repeat {
  
  print(i)

  i = i + 1

} while (i <= n)

//infinite loop

while(true){
    print("Infinite")
}

