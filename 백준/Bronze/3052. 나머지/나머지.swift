import Foundation

var result: [Int] = []

for i in 0..<10 {
    let input = Int(readLine()!)!
    let caculated = input % 42
    
    if i == 0 {
        result.append(caculated)
    }
    else{
        if !result.contains(caculated) {
            result.append(caculated)
        }
    }
}
print(result.count)