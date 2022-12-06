import Foundation

let hourMinute = readLine()!.split(separator: " ").map { Int(String($0))! }

var changedHour = 0
var changedMinute = 0

if hourMinute[1] - 45 < 0 {
    changedHour = hourMinute[0] - 1
    changedMinute = 60 + (hourMinute[1] - 45)
    
    if changedHour < 0 {
        changedHour = 23
    }
}
else {
    changedHour = hourMinute[0]
    changedMinute = hourMinute[1] - 45
}
print("\(changedHour) \(changedMinute)")