import Foundation

for i in 1...5{
    if(i==3){
        continue
    }

    print(i)
}

print("\ncontinue in while loop")
var num = 0
while num <= 10 {
    num+=1
    if(num%2 == 0){
        continue
    }
    print("\(num)")
}

//nested loops
print("\ncontinue for nested loops")
for i in 1...3 {
  for j in 1...3 {
    
    if j == 2 {
      continue
    }
    
    print("i = \(i), j = \(j)")
  }
}

//labeled continue
print("\n labeled continue")
outerloop: for i in 1...3{
  
  innerloop: for j in 1...3 {
    
    if j == 3 {
      continue outerloop
    }
    
    print("i = \(i), j = \(j)")
  }
}