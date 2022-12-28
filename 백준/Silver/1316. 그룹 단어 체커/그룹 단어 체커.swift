import Foundation

let input = Int(readLine()!)!
var count = 0


for _ in 0..<input {
    let stringInput = readLine()!
    var checkingDuplicationCount = 0
    var result: [Character] = []
    
    for (index, char) in stringInput.enumerated() {
        
        if index > 0 {
            let previousCharIndex = stringInput.index(stringInput.startIndex, offsetBy: index - 1)
            
            if result.contains(char) && stringInput[previousCharIndex] != char {
                checkingDuplicationCount = -1
            }
            else{
                result.append(char)
            }
        }
        else{
            result.append(char)
        }
    }
    if checkingDuplicationCount == 0 {
        count += 1
    }
}

print(count)