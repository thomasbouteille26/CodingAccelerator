//Créez un programme qui affiche la différence minimum absolue entre deux éléments d’un tableau constitué uniquement de nombres. Nombres négatifs acceptés.
import Darwin
// *** Functions ***
func transformStringArrayIntoIntArray(_ inputStringArray: [String]) -> [Int] {
    var emptyIntArray: [Int] = []
    for i in 1..<inputStringArray.count {
        emptyIntArray.append(Int(inputStringArray[i])!)
    }
    return emptyIntArray
}

func countBetweenValues(minimumValue inputInt1: Int, maximumValue inputInt2: Int) -> Int {
    var counter: Int = 0
    if inputInt1 < inputInt2 {
        for _ in inputInt1..<inputInt2 {
            counter += 1
        }
    } else {
        for _ in inputInt2..<inputInt1 {
            counter += 1
        }
    }

    return counter
}

func differenceMinimumAbsolute(_ arrayToVerify: [Int]) -> Int {
    var differenceMinimum: Int = -1
    var differenceInWork: Int = 0
    for i in 0..<arrayToVerify.count {
        for j in i+1..<arrayToVerify.count {
            differenceInWork = countBetweenValues(minimumValue: arrayToVerify[i], maximumValue: arrayToVerify[j])
            if differenceMinimum == -1 || differenceInWork < differenceMinimum {
                differenceMinimum = differenceInWork
            }
        }
    }
    return differenceMinimum
}

// *** Error management ***
if CommandLine.arguments.count < 2 {
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
let answer: Int = differenceMinimumAbsolute(inputIntArray)

// *** Display ***
print(answer)
