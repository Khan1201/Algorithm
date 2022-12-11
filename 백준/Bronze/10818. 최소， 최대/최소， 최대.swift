import Foundation

let firstInput = Int(readLine()!)!
let secondInput = readLine()!.split(separator: " ").map { Int(String($0))! }

if secondInput.count == firstInput {
    
    print(secondInput.min()!, terminator: " ")
    print(secondInput.max()!)
}