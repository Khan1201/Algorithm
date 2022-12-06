import Foundation

while let input = readLine() {
    let integerInput = input.split(separator: " ").map{ Int(String($0))! }
    print(integerInput[0] + integerInput[1])
}
