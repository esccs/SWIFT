/*
In Swift, 
Singleton is a design pattern that ensures a class can have only one object. 
Such a class is called singleton class.
*/

class FileManager {
    static let fileObj = FileManager()
    private init() {

    }

    func checkFileAccess(user: String){
        if user == "Sandeep"{
            print("Access Granted")
        }else{
            print("Access denied")
        }
    }
}

var file = FileManager.fileObj
file.checkFileAccess(user:"Sandeep")