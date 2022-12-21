import Foundation

var input = readLine()!.split(separator: " ")
var reversedOne = String(input[0].reversed())
var reversedTwo = String(input[1].reversed())

if Int(reversedOne)! > Int(reversedTwo)! {
    print(reversedOne)
}
else{
    print(reversedTwo)
}