import Foundation

var firstResult: [Int] = []
var removedNumber: Set<Int> = []

for firstValue in 1..<10000 {
    
    firstResult.append(firstValue)
}

for secondValue in 1..<10000 {
    
    var convertedString = String(secondValue)
    
    var caculatedResult = 0
    
    if convertedString.count == 1 {
     
        caculatedResult = secondValue + secondValue
    }
    
    else if convertedString.count == 2 {
        
        let firstChar = convertedString[convertedString.startIndex]
        let lastChar = convertedString[convertedString.index(before: convertedString.endIndex)]
        
        caculatedResult = secondValue + firstChar.wholeNumberValue! + lastChar.wholeNumberValue!
    }
    
    else if convertedString.count == 3 {
        
        let firstChar = convertedString[convertedString.startIndex]
        let middleChar = convertedString[convertedString.index(after: convertedString.startIndex)]
        let lastChar = convertedString[convertedString.index(before: convertedString.endIndex)]
        
        caculatedResult = secondValue + firstChar.wholeNumberValue! + middleChar.wholeNumberValue! + lastChar.wholeNumberValue!
    }
    else if convertedString.count == 4 {
        
        let firstChar = convertedString[convertedString.startIndex]
        let afterFirstChar = convertedString[convertedString.index(after: convertedString.startIndex)]
        let beforLastChar = convertedString[convertedString.index(before: convertedString.index(before: convertedString.endIndex))]
        let lastChar = convertedString[convertedString.index(before: convertedString.endIndex)]

        caculatedResult = secondValue + firstChar.wholeNumberValue! + afterFirstChar.wholeNumberValue! + beforLastChar.wholeNumberValue! + lastChar.wholeNumberValue!
    }
    
    if removedNumber.contains(caculatedResult) || caculatedResult >= 10000{
        continue
    }
    firstResult.remove(at: firstResult.firstIndex(of: caculatedResult)!)
    
    removedNumber.insert(caculatedResult)
    
}

for result in firstResult {
    
    print(result)
}