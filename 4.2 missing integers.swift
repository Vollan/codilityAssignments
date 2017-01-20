//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    var set = Set<Int>()
    for i in A {
        if i > 0 {
            set.insert(i)
        }
    }
    
    
    let number = set.reduce(0, +)
    return number/(A.count+1)
}

var array = [1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]
dump(solution(&array))
