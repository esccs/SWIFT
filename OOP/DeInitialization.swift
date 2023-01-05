/*
Deinitialization is a process to deallocate class instances when they're no longer needed. 
This frees up the memory space occupied by the system.
*/

class Race{
    var laps: Int

    init(){
        laps = 5
        print("Race Completed")
        print("Total laps:",laps)
    }

    deinit {
        print("Memory Deallocated")
    }
}

/*
Here, Race? indicates that result is an optional, 
so it can store two types of values:

-> values of the Race type.
-> a nil value.
*/
//create an instance
var result: Race? = Race()

//deallocate object
result = nil

/*
This deallocates the instance. 
The deinitializer is called automatically right before the class instance is deallocated. 
And the statement inside it is executed.
*/