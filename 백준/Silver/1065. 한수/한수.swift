import Foundation

var input = Int(readLine()!)!
var distance = 0
var previousChar: Character = "1"
var count = 0

for i in 1...input {
    
    for (index, char) in String(i).enumerated() {
        
        
        if String(i).count > 2 {
            
            if index == 0 {
                previousChar = char
            }
            
            else if index == 1 {
                distance = char.wholeNumberValue! - previousChar.wholeNumberValue!
                previousChar = char
            }
            
            else{

                if distance == (char.wholeNumberValue! - previousChar.wholeNumberValue!) {
                    count = count + 1
                    break
                }
            }
        }
        else{
            count = count + 1
            break
        }
    }
}
print(count)