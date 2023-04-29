// Créez un programme qui affiche les arguments qu’il reçoit ligne par ligne, peu importe le nombre d’arguments.

// *** Data ***
var arguments = CommandLine.arguments

// *** Program ***
// A loop that traverses the arguments array and that display each element except the 0 because element 0 is the name of file.
for i in 1..<arguments.count {
    print(arguments[i])
}

