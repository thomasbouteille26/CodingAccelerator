// Créez un programme qui affiche si un nombre est premier ou pas.

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// This function calcul the square root
func calculationSquareRoot(_ number: Int) -> Int {
    var tempNumber: Int = number
    var tempIndex: Int = 1
    var counter: Int = 0
    while tempNumber > 0 {
        tempNumber = tempNumber - tempIndex
        tempIndex = tempIndex + 2
        counter += 1
    }
    return counter
}
// This fonction check if the number in entry is a fist number
func checkIfFirstNumber(_ number: Int ) -> String {
    let squareRoot: Int = calculationSquareRoot(number)
    var counterDiv: Int = 2
    print(calculationSquareRoot(number))
    while  counterDiv <= squareRoot {
        if number == 2 {
            return "Oui le chiffre est premier"
        }
        if number % counterDiv == 0 {
            return "Non le chiffre n'est pas premier"
        }
        counterDiv += 1
        
    }
    return "Oui le chiffre est premier"
}

// *** Program ***
if arguments.count == 2 {
    if let numberInput1 = Int(arguments[1]) {
        if numberInput1 > 1 {
            print(checkIfFirstNumber(numberInput1))
        } else {
            print("Erreur")
        }
    } else {
        print("Erreur")
    }
} else {
    print("Erreur")
}
