// Créez un programme qui transforme une heure affichée en format 12h en une heure affichée en format 24h.

// *** Data ***
let arguments: [String] = CommandLine.arguments
let timeArray: [String] = transformStringToArray(arguments[1])
let time = timeDissection(arguments[1])

// *** Functions ***
// This function convert a String into an array
func transformStringToArray (_ StringToArray: String) -> [String] {
    var tempArrayString: [String] = []
    var tempCharToString: String
    for i in StringToArray {
        tempCharToString = String(i)
        tempArrayString.append(tempCharToString)
    }
    return tempArrayString
}
// This function convert an array of integers into a number
func convertArrayIntToInt (_ arrayInt: [Int]) -> Int {
    var result: Int = 0
    for i in 0..<arrayInt.count{
        // formula found on internet to transform an array into an int
        result = result * 10 + arrayInt[i]
    }
    return result
}
// This function return two number with a time in enter
func timeDissection (_ time: String) -> (hours: Int, minutes: Int) {
    var counter: Int = 0
    var tempHoursArrayInt: [Int] = []
    var tempMinutesArrayInt: [Int] = []
    for element in time {
        if let converter = Int(String(element)){
            if counter == 0 {
                tempHoursArrayInt.append(converter)
            } else if counter == 1 {
                tempMinutesArrayInt.append(converter)
            }
        } else {
            counter += 1
        }
    }
    let hours: Int = convertArrayIntToInt(tempHoursArrayInt)
    let minutes: Int = convertArrayIntToInt(tempMinutesArrayInt)
    return(hours, minutes)
}
// This function check if the numbers are integers and if time is correct. Hour 0 - 11 Minutes 0 - 59
func correctTimeFormat (_ timeArray: [String]) -> Bool{
    var exit: Bool = false
    let myInt1 = Int(timeArray[0]) ?? 500
    let myInt2 = Int(timeArray[1]) ?? 500
    let myInt3 = Int(timeArray[3]) ?? 500
    let myInt4 = Int(timeArray[4]) ?? 500
    if myInt1 != 500 && myInt2 != 500 && myInt3 != 500 && myInt4 != 500 {
        if time.hours < 12 && time.hours > -1 && time.minutes < 60 && time.minutes > -1 {
            exit = true
        } else {
            exit = false
        }
    }
    return exit
}

// *** Program ***
if arguments.count == 2 {
    if timeArray.count == 7 {
        if timeArray[5] == "P" || timeArray[5] == "p" {
            if correctTimeFormat(timeArray) {
                print("\(time.hours + 12)H\(time.minutes)")
            } else {
                print("Erreur")
            }
        } else if timeArray[5] == "A" || timeArray[5] == "a"{
            if correctTimeFormat(timeArray) {
                print("\(time.hours)H\(time.minutes)")
            } else {
                print("Erreur: format d'heure incorrect")
            }
        } else {
            print("Erreur: format d'indicateur de demi journée incorrect, AM ou PM attendu")
        }
    } else {
        print("Erreur: format attendu xx:xxPM  ou xx:xxAM")
    }
} else {
    print("Erreur: nombre d'arguments incorrect")
}


