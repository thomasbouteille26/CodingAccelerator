//Créez un programme qui met en majuscule une lettre sur deux d’une chaîne de caractères. Seule les lettres (A-Z, a-z) sont prises en compte.
import Darwin
// *** Functions ***
func changeCaseInputString(_ stringToModify: String) -> String {
    var modified: Bool = false
    var newString: String = ""
    for letter in stringToModify {
        var letterString = String(letter)
        if modified == false {
            modified = true
            letterString = letterString.uppercased()
        } else if modified == true {
            modified = false
            letterString = letterString.lowercased()
        }
        newString = newString + letterString
    }
    return newString
}

// *** Error management ***
if CommandLine.arguments.count != 2  {
    print ("error")
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1]) != nil {
    print ("error")
    Darwin.exit(0)
}

// *** Parsing ***
let inputString1: String = CommandLine.arguments[1]

// *** Resolve ***
let answer: String = changeCaseInputString(inputString1)

// *** Display ***
print(answer)

