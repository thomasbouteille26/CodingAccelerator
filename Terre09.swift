// Créez un programme qui affiche la racine carrée d’un entier positif

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

// *** Program ***
if arguments.count == 2 {
    if let numberInput1 = Int(arguments[1]) {
        print(calculationSquareRoot(numberInput1))
    } else {
        print("erreur")
    }
} else {
    print("erreur")
}
