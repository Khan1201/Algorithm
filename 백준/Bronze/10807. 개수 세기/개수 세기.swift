import Foundation

let inputCount = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let repeatedNumber = Int(readLine()!)!
var count = 0

if input.count == inputCount {
    
    for number in input {
        if number == repeatedNumber {
            count = count + 1
        }
    }
    print(count)
}