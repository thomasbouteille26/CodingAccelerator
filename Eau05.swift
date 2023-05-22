//Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.
import Darwin
// *** Functions ***
func checkIfString2IsInString1(_ string1: String,_ string2: String) -> Bool {
    // On compte le nombre de lettre trouvée
    var counter: Int = 0
    var letterSave: String = ""
    var letterBefore: String = ""
    for i in string2 {
        for j in string1 {
            // Initialisation de letterSave et letterBefore aux valeurs de la première boucle pour que le premier passage fonctionne
            if counter == 0 {
                letterSave = String(j)
                letterBefore = String(i)
            }
            // On verifie si les lettres de string2 sont présentent dans string1 et si oui que les lettres precedentes correspondent.
            if i == j && letterBefore == letterSave {
                counter += 1
                letterBefore = String(i)
                // On a trouvé une lettre dans string1 qui correspond a une lettre la lettre dans string2 on reviens à la premiere boucle via ce break
                break
            }
            letterSave = String(j)
        }
    }
    // Si le nombre de lettre trouvée correspond à la taille de la string recherché c'est true !
    return counter == string2.count ? true : false
}

// *** Error management ***
if CommandLine.arguments.count != 3  {
    print ("error")
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1]) != nil {
    print ("error")
    Darwin.exit(0)
}

// *** Parsing ***
let inputString1: String = CommandLine.arguments[1]
let inputString2: String = CommandLine.arguments[2]

// *** Resolve ***
let answer: Bool = checkIfString2IsInString1(inputString1, inputString2)

// *** Display ***
print(answer)
