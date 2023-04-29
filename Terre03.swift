// Créez un programme qui affiche l’alphabet à partir de la lettre donnée en argument en lettres minuscules suivi d’un retour à la ligne.

// *** Data ***
let alphabet: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l", "m", "n", "o","p","q","r","s","t","u","v","w","x","y","z"]
var arguments: [String] = CommandLine.arguments
var find: Bool = false

// *** Functions ***
// This function check this argument is a letter, she return a boolean
func isLetter(_ argument: String, _ alphabetArray: [String]) -> Bool {
    for i in alphabetArray {
        if argument == i {
            return true
        }
    }
    return false
}

// This function check that array arguments contain one argument and that this argument is unique
func oneArgumentOneChar(_ arguments: [String]) -> Bool {
    if arguments.count == 2 && arguments[1].count == 1 {
        return true
    } else {
        return false
    }
}

// *** Program ***
if oneArgumentOneChar(arguments) == true {
    if isLetter(arguments[1], alphabet) == true {
        for index in 0..<alphabet.count {
            if arguments[1] == alphabet[index]{
                find = true
            }
            if find == true {
                print(alphabet[index], terminator: "")
                
            }
        }
    } else {print("erreur")}
} else {print("erreur")}
print("\n")







