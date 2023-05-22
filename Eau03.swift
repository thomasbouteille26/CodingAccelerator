//Créez un programme qui afiche le N-eme élément de la célèbre suite de Fibonacci. (0, 1, 1, 2) étant le début de la suite et le premier élément étant à l'index 0.
import Darwin
// *** Data ***
let arguments: [String] = CommandLine.arguments

// *** Functions ***
func displayNumberNFibonacci(_ nElement: Int) -> String {
    var fibo1: Int = 0
    var fibo2: Int = 1
    var fibo1Nminus1: Int = 0
    var fibo2Nminus1: Int = 0
    if nElement > 0 {
        for _ in 1...nElement{
            fibo1Nminus1 = fibo1
            fibo2Nminus1 = fibo2
            fibo1 = fibo1Nminus1 + fibo2Nminus1
            fibo2 = fibo1Nminus1
        }
        return String(fibo1)
    } else if nElement == 0 {
        return "0"
    } else {
        return "-1"
    }
}

// *** Error management ***
if CommandLine.arguments.count != 2 {
    print (-1)
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1]) == nil {
    print (-1)
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1])! < 0 {
    print (-1)
    Darwin.exit(0)
}

// *** Parsing ***
let inputNumber: Int = Int(CommandLine.arguments[1])!

// *** Resolve ***
let answer: String = displayNumberNFibonacci(inputNumber)

// *** Display ***
print(answer)
