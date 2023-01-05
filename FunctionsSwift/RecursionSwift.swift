
func countDown(number: Int){
    print("\(number)")

    if number==0{
        print("Count Dowm Stops")
    }

    else{
        countDown(number: number-1)
    }
}

print("CountDown: ")
countDown(number: 3)


//Factorial
print("\nFactorial ")

func fact(num: Int)-> Int{
    if(num==0){
        return 1
    }
    return num*fact(num:num-1)
}

var factorial = fact(num: 10)
print("\nFactorial of 10: \(factorial)")