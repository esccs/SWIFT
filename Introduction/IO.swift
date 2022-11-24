import Foundation

//output

//print(items: seperators terminators: )

//items : values inside double quotations
//seperators : allows us to seperate multiple items inside the print()
//terminators: allows us to add a specific values like new line "\n" 
// seperators and terminators are optional


print("new year",2022, "see you soon!", separator:".", terminator:"\n")

//join
print("Sandeep us "+" awesome.")

//-------input----------

print("Enter your Name: ")
let name = readLine()

// here ! is used to force fully unwrap the name
// readLine returns an Optional String so we use ! to unwrap the String.
print("your name is \(name!).")