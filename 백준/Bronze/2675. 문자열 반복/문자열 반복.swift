import Foundation

let inputCount = Int(readLine()!)!

for _ in 0..<inputCount {
    
    let inputRepeatString = readLine()!.split(separator: " ")
    var stringSum = ""
    
    for j in inputRepeatString[1] {
        
        for _ in 0..<Int(inputRepeatString[0])!{
            stringSum += String(j)
        }
    }
    print(stringSum)
}