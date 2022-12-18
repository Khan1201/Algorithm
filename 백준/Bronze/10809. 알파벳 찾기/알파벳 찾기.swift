import Foundation

let input = readLine()!

let aScalars = "a".unicodeScalars
let aCode = aScalars[aScalars.startIndex].value

var AtoZResult: [Int] = []

for i in 0..<26 {
    
    let targetCode = aCode + UInt32(i)
    var value = -1
    
    for (index, inputValue) in input.enumerated() {
        
        let indexScalar = inputValue.unicodeScalars
        let indexCode = indexScalar[indexScalar.startIndex].value
        
        if (indexCode == targetCode) && (value == -1) {
            value = index
        }
    }

    AtoZResult.append(value)
}

for i in AtoZResult {
    
    print(i, terminator: " ")
}