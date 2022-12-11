import Foundation

var resultArray: [Int] = []
var index: Int = -1

for _ in 0..<9 {
    let input = Int(readLine()!)!
    resultArray.append(input)
}
let max = resultArray.max()

for (i, result) in resultArray.enumerated() {
    
    if max == result{
        index = i + 1
    }
}
print(max!)
print(index)