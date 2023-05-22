//Créez un programme qui affiche si un nombre est premier ou pas.
import Darwin
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
// This fonction check if the number in entry is a first number
func checkIfFirstNumber(_ numberArgument: Int ) -> Bool {
    let squareRoot: Int = calculationSquareRoot(numberArgument)
    var counterDiv: Int = 2
    while  counterDiv <= squareRoot {
        if numberArgument == 2 {
            return true
        }
        if numberArgument % counterDiv == 0 {
            return false
        }
        counterDiv += 1
    }
    return true
}

// This fonction find the next first number
func findTheFirstNumberIfNeed(_ arg: Int ) -> String {
    var number1: Int = arg
    var numberFound: Bool = false
    if checkIfFirstNumber(arg) {
        return "The number is first"
    } else {
        while numberFound == false {
            number1 += 1
            if checkIfFirstNumber(number1) {
                numberFound = true
            }
        }
        return "The next first number is \(number1)"
    }
}



// *** Error management ***
if CommandLine.arguments.count != 2 {
    print (-1)
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1]) == nil {
    print (-1)
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1])! < 0 {
    print (-1)
    Darwin.exit(0)
}

// *** Parsing ***
let inputNumber: Int = Int(CommandLine.arguments[1])!

// *** Resolve ***
let answer: String = findTheFirstNumberIfNeed(inputNumber)

// *** Display ***
print(answer)
