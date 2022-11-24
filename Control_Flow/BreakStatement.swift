// outer loop
for week in 1...3 {
  print("Week: \(week)")

  // inner loop
  for day in 1...7 {


    if(week == 2) {
      // use of break statement
      break
      }

    print("  Day:  \(day)")
   }

  print("")
}


//labeled statement with break

outerloop: for i in 1...3{
  innerloop: for j in 1...3{
    if(j==3){
      break outerloop
    }
    print("i= \(i), j=\(j)")
  }
}