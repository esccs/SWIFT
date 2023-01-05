enum DivisionError: Error {
    case dividebyZero
}

func division(numerator: Int, denominator: Int) throws {
    if(denominator == 0){
        throw DivisionError.dividebyZero
    }else{
        let result = numerator/denominator
        print(result)
    }
    
}

do{
    try division(numerator: 10, denominator: 0)
}

catch DivisionError.dividebyZero {
    print("Error: Denominator Cannot be 0")
}


/*
Disable Error Handling:

In Swift, sometimes we can be confident that the throwing function won't throw an error at runtime.

In that case, we can write try! during the function call to disable the error handling.

try! division(numerator: 10, denominator: 5)

*/
