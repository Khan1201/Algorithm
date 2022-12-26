import Foundation

var input = readLine()!
var condition = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]

condition.forEach { condition in
    input = input.replacingOccurrences(of: condition, with: "1")
}
print(input.count)