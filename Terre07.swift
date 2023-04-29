// Créez un programme qui affiche le nombre de caractères d’une chaîne de caractères passée en argument.

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// This function count elements of a string
func countString (_ stringToCount: String) -> Int {
    var countElement: Int = 0
    for _ in stringToCount{
        countElement += 1
    }
    return countElement
}

// *** Program ***
if arguments.count == 2 {
        print(countString(arguments[1]))
} else {
    print("erreur")
}

