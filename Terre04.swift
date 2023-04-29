// Créez un programme qui permet de déterminer si l’argument donné est un entier pair ou impair..

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// this function check if the parameter is even
// Check with modulo because the remainder of a number even is always 0
func isPair(_ number: Int) -> Bool {
    if (number % 2) == 0 {
        return true
    } else {
        return false
    }
}


// *** Program ***
if arguments.count == 2 {
    if let numberInput = Int(arguments[1]) {
        if isPair(numberInput) == true {
            print("pair")
        } else {
            print("impair")
        }
    } else {
        print("Tu ne me la mettras pas à l'envers")
    }
} else {
    print("Tu ne me la mettras pas à l'envers")
}


