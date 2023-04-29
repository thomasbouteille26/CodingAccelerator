// Créez un programme qui affiche le résultat d’une puissance.

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// This function calcul the power 
func calculationOfPower(_ number: Float, _ index: Int) -> Float {
    var tempNumber: Float = number
    for _ in 1..<index{
        tempNumber = tempNumber * number
    }
    return tempNumber
}

// *** Program ***
if arguments.count == 3 {
    if let numberInput1 = Float(arguments[1]) {
        if let numberInput2 = Int(arguments[2]) {
            print("Le résultat de la puissance est \(calculationOfPower(numberInput1, numberInput2))")
        } else {
            print("erreur")
        }
    } else {
        print("erreur")
    }
} else {
    print("erreur")
}
