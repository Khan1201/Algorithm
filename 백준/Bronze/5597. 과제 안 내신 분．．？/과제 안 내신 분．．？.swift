import Foundation

var studentArray: [Int] = []
var notSubmitArray: [Int] = []

for number in 1...30{
    studentArray.append(number)
}

for _ in 1...28 {
    let input = Int(readLine()!)!
    
    if studentArray.contains(input) {
        studentArray.remove(at: studentArray.firstIndex(of: input)!)
    }
}

print(studentArray.min()!)
print(studentArray.max()!)