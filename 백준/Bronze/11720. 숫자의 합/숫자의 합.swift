import Foundation

var repeatCount = Int(readLine()!)!
var input = readLine()!
var sum = 0

if input.count == repeatCount{
    
    for i in 0..<repeatCount{
        
        let indexInt = input[input.index(input.startIndex, offsetBy: i)].wholeNumberValue!
        sum += indexInt
    }
}
print(sum)