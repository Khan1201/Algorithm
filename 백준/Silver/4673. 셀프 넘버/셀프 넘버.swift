import Foundation

var resultSet: Set<Int> = []
var sum = 0

for i in 1...10000 {
    
    sum = sum + i
    
    for char in String(i) {
        sum = sum + char.wholeNumberValue!
    }
    resultSet.insert(sum)
    sum = 0
}

for i in 1...10000 {
    
    if !resultSet.contains(i) {
        print(i)
    }
}