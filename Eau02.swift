//Créez un programme qui affiche ses arguments reçus à l’envers.
let arguments: [String] = CommandLine.arguments

for index in stride(from: (arguments.count - 1), through: 1, by: -1) {
    print(arguments[index])
}

