import Foundation

//Arrays
var names:[String] = ["san","pan","can"]
print(names)

//Array with a default value
var threeDoubles:[Double] = Array(repeating:0.0,count:3)
print(threeDoubles)

var anotherThreeDoubles:[Double] = Array(repeating:2.5,count:3)
var sixDoubles = threeDoubles+anotherThreeDoubles

print(sixDoubles)

//creating Array with an literal
var shoppingList: [String] = ["Eggs","milk"]

print("\nShooping list item count: \(shoppingList.count)")

if(shoppingList.isEmpty){
    print("The shopping list is Empty")
}else{
    print("The shopping list is not empty")
}

//append to array
shoppingList.append("Flour")
shoppingList+=["Baking Powder"]
shoppingList+=["Chocolate Spread","Cheese","Butter"]

//using index to get elements
var firstElement = shoppingList[0]
print("First Element: \(firstElement)")

//modifying the elements
shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas","Apples"]
print(shoppingList)

//using insert functions on Array

shoppingList.insert("Maple Syrup",at:0)
print(shoppingList)

let mapleSyrup = shoppingList.remove(at:0)
print(shoppingList)

shoppingList.removeLast()
print(shoppingList)

//iteration over an Array
print("\nTypes of iterations over an array:\n")
print("1.")
for item in shoppingList{
    print(item)
}

print("2.")
for (index,value) in shoppingList.enumerated(){
    print("Item \(index+1): \(value)")
}