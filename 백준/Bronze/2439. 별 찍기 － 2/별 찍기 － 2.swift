import Foundation

let inputCount = Int(readLine()!)!

for i in 0..<inputCount {
    for _ in stride(from: inputCount, to: i + 1, by: -1){
        print(" ", terminator: "")
    }
    for _ in stride(from: i + 1, to: 0, by: -1) {
        print("*", terminator: "")
    }
    print("")
}
