//Créez un programme qui détermine si une chaîne de caractères ne contient que des chiffres.
import Darwin

// *** Error management ***
if CommandLine.arguments.count != 2  {
    print ("error")
    Darwin.exit(0)
}
if Int(CommandLine.arguments[1]) != nil {
    print(true)
    Darwin.exit(0)
}

// *** Display ***
print(false)
