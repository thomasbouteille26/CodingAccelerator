//Créez un programme qui affiche le premier index d’un élément recherché dans un tableau. Le tableau est constitué de tous les arguments sauf le dernier. L’élément recherché est le dernier argument. Afficher -1 si l’élément n’est pas trouvé.
import Darwin
// *** Functions ***
func searchingLastArgumentIntoInputString(_ stringsArray: [String]) -> Int {
    let lastElement: String =  stringsArray[stringsArray.count-1]
    for i in 0..<stringsArray.count-1 {
        if stringsArray[i] == lastElement {
            print("\(lastElement) trouvé")
            // - 1 car le tout premier argument est le nom du fichier
            return i - 1
        }
    }
    return -1
}

// *** Error management ***
if CommandLine.arguments.count <= 2 {
    print ("error")
    Darwin.exit(0)
}

// *** Parsing ***
let inputStrings: [String] = CommandLine.arguments

// *** Resolve ***
let answer: Int = searchingLastArgumentIntoInputString(inputStrings)

// *** Display ***
print(answer)
