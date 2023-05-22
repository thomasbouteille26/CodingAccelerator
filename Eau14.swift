//Créez un programme qui trie les éléments donnés en argument par ordre ASCII.
import Darwin
// *** Functions ***
func returnArrayBubbleSort(_ arrayToSort: [String]) -> [String] {
    var arraySorted: [String] = arrayToSort
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
if CommandLine.arguments.count < 2 {
    print ("error")
    Darwin.exit(0)
}

// *** Parsing ***
var inputStringArray: [String] = []
for i in 1..<CommandLine.arguments.count {
    inputStringArray.append(CommandLine.arguments[i])
}

// *** Resolve ***
let answer: [String] = returnArrayBubbleSort(inputStringArray)

// *** Display ***
print(answer)


