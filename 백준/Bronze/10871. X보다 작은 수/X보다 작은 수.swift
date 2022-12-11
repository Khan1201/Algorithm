import Foundation

let firstInput = readLine()!.split(separator: " ").map { Int(String($0))! }
let secondInput = readLine()!.split(separator: " ").map { Int(String($0))! }
var resultArray: [Int] = []

for secondNumber in secondInput {
    if firstInput[1] > secondNumber {
        resultArray.append(secondNumber)
    }
}

for result in resultArray {
    print(result, terminator: " ")
}