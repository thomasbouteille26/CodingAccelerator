//Créez un programme qui trie une liste de nombres par ordre croissant. Votre programme devra implémenter l’algorithme du tri à bulle.
import Darwin
// *** Functions ***
func transformStringArrayIntoIntArray(_ inputStringArray: [String]) -> [Int] {
    var emptyIntArray: [Int] = []
    for i in 1..<inputStringArray.count {
        emptyIntArray.append(Int(inputStringArray[i])!)
    }
    return emptyIntArray
}

func returnArrayBubbleSort(_ arrayToSort: [Int]) -> [Int] {
    var arraySorted: [Int] = arrayToSort
    var indexMaximumValue: Int = 0
    for i in 0..<arraySorted.count-1 {
        indexMaximumValue = 0
        for j in 1..<arraySorted.count-i {
            if arraySorted[j] > arraySorted[indexMaximumValue] {
                indexMaximumValue = j
            }
        }
        arraySorted.swapAt(indexMaximumValue, arraySorted.count-i-1)
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
let answer: [Int] = returnArrayBubbleSort(inputIntArray)

// *** Display ***
print(answer)
