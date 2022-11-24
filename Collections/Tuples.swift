/*
In Swift, a tuple is a group of different values. 
And, each value inside a tuple can be of different data types.
*/

var products = ("Mac Book",1099.99)

print("Original Tuple")
print("Name: ",products.0)
print("Price: ",products.1)

// modify second value
products.1 = 1299.99

print("\nTuple After Modification: ")

// access tuple elements
print("Name:", products.0)
print("Price:", products.1)

//Named Tuples
/*
In Swift, we can also provide names for each element of the tuple.
*/
print("\n")
var company = (product:"IOS APP",version:2.1)

print("Product: ",company.product)
print("Version: ",company.version)


//Nested Tuple

var alphabets = ("A","B","C",("a","b","c"))

// access first element
print(alphabets.0)   // prints "A"

// access the third element
print(alphabets.3)

// access nested tuple
print(alphabets.3.0)  // prints "a"











