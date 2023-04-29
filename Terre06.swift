// Créez un programme qui affiche l’inverse de la chaîne de caractères donnée en argument.

// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
// This function transform a string into an array
func transformStringToArray (_ StringToArray: String) -> [String] {
    var tempArrayString: [String] = []
    var tempCharToString: String
    for i in StringToArray {
        tempCharToString = String(i)
        tempArrayString.append(tempCharToString)
    }
    return tempArrayString
}

// This function reverse an array of type string
func reverseArrayString (_ arrayOfString: [String]) -> [String] {
    var reverseArray: [String] = []
    var countTour = arrayOfString.count
    for _ in 0..<arrayOfString.count{
        countTour = countTour - 1
        reverseArray.append(arrayOfString[countTour])
    }
    return reverseArray
}

// This function transform an array into a simple string
func transformArrayToString (_ arrayToString: [String]) -> String {
    var tempString: String = ""
    for i in arrayToString {
        tempString = tempString + i
    }
    return tempString
    
}

// *** Program ***
if arguments.count == 2 {
        // Convert in string because arguments[1] is a chaine de caractere
        let input = String(arguments[1]) 
        let tempArray = transformStringToArray(input)
        let tempReverseArrayString = reverseArrayString(tempArray)
        print(transformArrayToString(tempReverseArrayString))
} else {
    print("erreur")
}

