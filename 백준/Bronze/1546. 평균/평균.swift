import Foundation

let firstInput = Int(readLine()!)!
let secondInput = readLine()!.split(separator: " ").map { Int(String($0))! }
let max = secondInput.max()!
var sum: Float = 0

for result in secondInput {
    sum = sum + (Float(result) / Float(max)) * 100
}
print(sum / Float(secondInput.count) )