// Créez un programme qui prend en paramètre trois entiers et affiche la valeur du milieu.

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// This function return true if the enter is an array with only integers
func areIntegers(_ arguments: [String]) -> Bool {
    var counter: Int = 0
    for i in 1..<arguments.count {
        if Int(arguments[i]) != nil {
            counter += 1
        }
    }
    if counter == 3 {
        return true
    }
    return false
}
// This function return the integer average in an array of 3 elements exactly
func findSwissNumber (_ arguments: [String]) -> String {
    let myInt1 = Int(arguments[1]) ?? 0
    let myInt2 = Int(arguments[2]) ?? 0
    let myInt3 = Int(arguments[3]) ?? 0
    var swissNumber: String = ""
    if myInt1 != myInt2 && myInt1 != myInt3 && myInt2 != myInt3 {
        if myInt1 > myInt2 && myInt1 < myInt3 {
            swissNumber = String(myInt1)
        }
        if myInt1 < myInt2 && myInt1 > myInt3 {
            swissNumber = String(myInt1)
        }
        if myInt2 > myInt1 && myInt2 < myInt3 {
            swissNumber = String(myInt2)
        }
        if myInt2 < myInt1 && myInt2 > myInt3 {
            swissNumber = String(myInt2)
        }
        if myInt3 > myInt2 && myInt3 < myInt1 {
            swissNumber = String(myInt3)
        }
        if myInt3 < myInt2 && myInt3 > myInt1 {
            swissNumber = String(myInt3)
        }
    } else {
        swissNumber = "Erreur"
    }
    return swissNumber
}

// *** Program ***
if arguments.count == 4 {
    if areIntegers(arguments) {
        print(findSwissNumber(arguments))
    } else {
        print("Les arguments passés en entrée ne sont pas tous des entiers")
    }
} else {
    print("Le nombre d'arguments passés en entrée est incorrect")
}
