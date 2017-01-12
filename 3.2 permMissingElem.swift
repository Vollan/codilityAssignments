//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var s = Set<Int>()
    var last: Int = 0
    var correctNumber = 0
    if A.isEmpty {correctNumber = last+1}
    A.map({ s.insert($0) })
    s.sorted().map({ if $0 == last+1 {
        last = last+1
    } else {
            correctNumber = last+1
        }
    })
    return correctNumber == 0 ? last+1 : correctNumber
}


var array: [Int] = [2,3,4]
dump(solution(&array))
