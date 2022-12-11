import Foundation

var inputCount = Int(readLine()!)!
var sum = 0
var average: Double = 0
var overAverageCount = 0

for _ in 0..<inputCount {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    for (index, grade) in input.enumerated() {
        if index != 0 {
            sum = sum + grade
        }
    }
    average = Double(sum) / Double(input.count - 1)
    
    for (index, grade) in input.enumerated() {
        if index != 0 {
            if Double(grade) > average {
                overAverageCount = overAverageCount + 1
            }
        }
    }
    let result = String(format: "%.3f", (Double(overAverageCount) / Double(input.count - 1)) * 100)
    print(result + "%")
    
    overAverageCount = 0
    sum = 0
    average = 0
}