//Créez un programme qui affiche toutes les valeurs comprises entre deux nombres dans l’ordre croissant. Min inclus, max exclus.
import Darwin
// *** Functions ***
func displayBetweenValues(minimumValue inputInt1: Int, maximumValue inputInt2: Int) {
    for i in inputInt1..<inputInt2 {
        print(String(i), terminator:" ")
    }
}

// *** Error management ***
if CommandLine.arguments.count != 3  {
    print ("error")
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1]) == nil {
    print ("error")
    Darwin.exit(0)
}

if Int(CommandLine.arguments[1])! >= Int(CommandLine.arguments[2])! {
    print ("error")
    Darwin.exit(0)
}

// *** Parsing ***
let inputInt1: Int = Int(CommandLine.arguments[1])!
let inputInt2: Int = Int(CommandLine.arguments[2])!

// *** Resolve + Display ***
displayBetweenValues(minimumValue: inputInt1,maximumValue: inputInt2)
