import Foundation

let hourMinute = readLine()!.split(separator: " ").map { Int(String($0))! }
let targetMinute = Int(readLine()!)!

var convertedHour = 0
var convertedMinute = targetMinute

var changedHour = 0
var changedMinute = 0


while true{
    if convertedMinute >= 60 {
        convertedHour = convertedHour + 1
        convertedMinute = convertedMinute - 60
    }
    else{
        break
    }
}

changedHour = hourMinute[0] + convertedHour
changedMinute = hourMinute[1] + convertedMinute

if changedMinute >= 60 {
    changedHour = changedHour + 1
    changedMinute = changedMinute - 60
}

if changedHour >= 24 {
    changedHour = changedHour - 24
}


print("\(changedHour) \(changedMinute)")