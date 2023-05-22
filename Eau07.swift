//Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. Les autres lettres devront être en minuscules. Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.
import Darwin
// *** Functions ***
func upperCasedFirstLetterEachWord(_ stringToModify: String) -> String {
    var newString: String = ""
    var find: Bool = true
    for letter in stringToModify {
        var letterString = String(letter)
        if find == true  {
            letterString = letterString.uppercased()
            find = false
        }
        newString = newString + letterString
        
        if letterString == " " || letterString == "\t" || letterString == "\n" {
            find = true
        }
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
let answer: String = upperCasedFirstLetterEachWord(inputString1)

// *** Display ***
print(answer)

