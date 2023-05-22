//Créez un programme qui trie une liste de nombres par ordre croissant. Votre programme devra implémenter l’algorithme du tri par sélection.
import Darwin
// *** Functions ***
func transformStringArrayIntoIntArray(_ inputStringArray: [String]) -> [Int] {
    var emptyIntArray: [Int] = []
    for i in 1..<inputStringArray.count {
        emptyIntArray.append(Int(inputStringArray[i])!)
    }
    return emptyIntArray
}

func returnArraySelectSort(_ arrayToSort: [Int]) -> [Int] {
    var arraySorted: [Int] = arrayToSort
    var indexMinimumValue: Int = 0
    for i in 0..<arraySorted.count-1 {
        indexMinimumValue = i
        for j in 1+i..<arraySorted.count {
            if arraySorted[j] < arraySorted[indexMinimumValue] {
                indexMinimumValue = j
            }
        }
            arraySorted.swapAt(indexMinimumValue, i)
    }
    return arraySorted
}

// *** Error management ***
if CommandLine.arguments.count < 3 {
    print ("error")
    Darwin.exit(0)
}

for i in 1..<CommandLine.arguments.count {
    if Int(CommandLine.arguments[i]) == nil {
        print ("error")
        Darwin.exit(0)
    }
}

// *** Parsing ***
let inputIntArray: [Int] = transformStringArrayIntoIntArray(CommandLine.arguments)

// *** Resolve ***
let answer: [Int] = returnArraySelectSort(inputIntArray)

// *** Display ***
print(answer)
