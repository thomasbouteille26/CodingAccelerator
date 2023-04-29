// Créez un programme qui affiche le résultat et le reste d’une division entre deux nombres.

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// This function return the result of a division
func resultDiv(_ number1: Int, _ number2: Int) -> Float {
    let result = Float(number1) / Float(number2)
    return result
}

// This function return the remainder of a division
func remainderDiv(_ number1: Int, _ number2: Int) -> Int {
    let remainder = number1 % number2
    return remainder
}

// *** Program ***
if arguments.count == 3 {
    if let numberInput1 = Int(arguments[1]) {
        if let numberInput2 = Int(arguments[2]) {
            print("Le résultat est \(resultDiv(numberInput1, numberInput2))")
            print("Le reste est \(remainderDiv(numberInput1, numberInput2))")
        } else {
            print("erreur")
        }
    } else {
        print("erreur")
    }
} else {
    print("erreur")
}

