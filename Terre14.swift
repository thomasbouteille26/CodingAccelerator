// Créez un programme qui détermine si une liste d’entiers est triée ou pas..

// Test d'utilisation des opérateur ternaire ! un dans isSorted et un pour le programme global

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// This function define if the array in enter is sorted.
func isSorted(_ arguments: [String]) -> Bool {
    var counter: Int = 0
    for i in 0..<arguments.count-1 {
        let myInt1 = Int(arguments[i]) ?? 0
        let myInt2 = Int(arguments[i+1]) ?? 0
        if myInt1 < myInt2 || myInt1 == myInt2 {
            counter += 1
        }
    }
    let exit = counter == (arguments.count-1) ? true : false
    return exit
}

// This function define if the array in enter is composed of with integers.
func isInteger(_ arguments: [String]) -> Bool {
    for i in 1..<arguments.count {
        let myIntTest = Int(arguments[i]) ?? nil
        if myIntTest == nil {
            return false
        }
    }
    return true
}

// *** Program ***
isInteger(arguments) ? (isSorted(arguments) ? print("Trié !") : print("Pas trié !")) : print("Erreur avec les arguments")



