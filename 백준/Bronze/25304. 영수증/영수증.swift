import Foundation

let totalPrice = Int(readLine()!)!
let kind = Int(readLine()!)!
var sum = 0

for _ in 0..<kind {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    sum = sum + (input[0] * input[1])
}

sum == totalPrice ? print("Yes") : print("No")

