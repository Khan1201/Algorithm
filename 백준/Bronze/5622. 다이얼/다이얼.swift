import Foundation

let input = readLine()!
var sum = 0

input.forEach { word in
    switch word {
    case "A"..."C":
        sum += 3
    case "D"..."F":
        sum += 4
    case "G"..."I":
        sum += 5
    case "J"..."L":
        sum += 6
    case "M"..."O":
        sum += 7
    case "P"..."S":
        sum += 8
    case "T"..."V":
        sum += 9
    case "W"..."Z":
        sum += 10

    default:
        print("x")
    }
}
print(sum)