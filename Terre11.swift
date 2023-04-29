// Créez un programme qui transforme une heure affichée en format 24h en une heure affichée en format 12h.

// *** Data ***
let arguments: [String] = CommandLine.arguments
let time = timeDissection(arguments[1])

// *** Functions ***
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
// This function convert 13 -> 23 to 1 -> 11
func convertHours (_ hours: Int) -> Int {
    var countHours: Int = 1
    var tempHours: Int = hours
    if tempHours > 12 {
        for i in 13..<tempHours+1 {
            if i == tempHours {
                tempHours = countHours
            }
            countHours += 1
        }
    }
    return tempHours
}
// This function definie AM or PM in function of the hour
func defineAMorPM (_ hour: Int) -> String {
    var journey: String = ""
    if hour > -1 && hour < 12 {
        journey = "AM"
    } else if hour > 11 && hour < 24 {
        journey = "PM"
    }
    return journey
}


// *** Program ***
if arguments.count == 2 {
    if time.hours < 24 && time.hours > -1 && time.minutes < 60 && time.minutes > -1 {
        print ("\(convertHours(time.hours)):\(time.minutes)\(defineAMorPM(time.hours))")
    } else {
        print("Erreur")
    }
} else {
    print("Erreur")
}


