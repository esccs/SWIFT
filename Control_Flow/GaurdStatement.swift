import Foundation

/*
->In Swift, we use the guard statement to 
   transfer program control out of scope when certain conditions are not met.

->The guard statement is similar to the if statement with one major difference. 
   The if statement runs when a certain condition is met.
   However, the guard statement runs when a certain condition is not met.

syntax:

guard expression else {
  // statements
  // control statement: return, break, continue or throw.
}
-> We must use return, break, continue or throw to exit from the guard scope.

 */
var i=2

while(i<=10){
    
    guard i % 2 == 0 else{
        i+=1
        continue
    }
    print(i)
    i+=1
}

//inside a function 

func checkOddEven(){
    var number = 23
    guard number % 2 == 0 else{
        print("Odd Number")
        return
    }
    print("Even Number")
}

checkOddEven()

//guard with multiple conditions
print("\nguard with multiple conditions")

func checkEligibility(){
    var age = 33
    guard age >= 18, age <= 40 else{
        print("not Eligible for job")
    }
    print("\nyou are eligible for this job")
}

checkEligibility()

//guard let
/*
While working with Swift Optionals, 
the guard statement is used as the guard-let statement.
*/

print("\nguard for optionals")
func checkAge() {
	
  var age: Int? = 22

  guard let myAge = age else {
    print("Age is undefined")
    return
  }

  print("\nMy age is \(myAge)")
}

checkAge()