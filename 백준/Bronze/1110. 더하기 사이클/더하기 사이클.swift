import Foundation
var firstInput = readLine()!

if firstInput.count == 1 {
    firstInput = "0" + firstInput
}

var changedInput = firstInput

var count = 0

while true{
    
    count = count + 1
    
    let firstInt = changedInput[changedInput.startIndex].wholeNumberValue!
    let endInt = changedInput[changedInput.index(before: changedInput.endIndex)].wholeNumberValue!
       
    var resultString = String(firstInt + endInt)
    
    if resultString.count == 1{
        resultString = "0" + resultString
    }
    
    let resultEndInt = resultString[resultString.index(before: resultString.endIndex)].wholeNumberValue!
    
    let newValue = String(endInt) + String(resultEndInt)
    
    if newValue == firstInput {
        print(count)
        break
    }
    else{
        changedInput = newValue
    }
    
}