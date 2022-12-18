import Foundation

let input = readLine()!.uppercased()
var result: ([Character], [Int]) = ([], [])
var maxString: String = input

for char in input {
    
    if !result.0.contains(char){
        result.0.append(char)
    }
}

for resultChar in result.0 {
    
    var count = 0
    
    for inputChar in input {
        
        if resultChar == inputChar {
            count += 1
        }
    }
    
    result.1.append(count)
}


var maxInt = result.1.max()!
var maxIndex = result.1.firstIndex(of: maxInt)!
result.1.remove(at: maxIndex)

for _ in result.1 {
    
    if result.1.contains(maxInt) {
        maxString = "?"
    }
    else{
        maxString = result.0[maxIndex].uppercased()
    }
}
print(maxString)