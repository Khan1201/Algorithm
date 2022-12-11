import Foundation

var inputCount = Int(readLine()!)!
var count: Int = 0
var result: Int = 0

for _ in 0..<inputCount {
    let input = readLine()!
    
    for (_, char) in input.enumerated() {
        
        if char == "O"{
            count = count + 1
            result = result + count
        }
        else {
            count = 0
        }
    }
    print(result)
    count = 0
    result = 0
}