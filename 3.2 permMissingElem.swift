//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var s = Set<Int>()
    var next: Int = 1
    
    A.map({s.insert($0)})
    
    for i in s.sorted() {
        if i != next {
            return next
        }
        next+=1
    }
    return next
}


var array: [Int] = [2,3,4]
dump(solution(&array))
