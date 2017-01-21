//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    var set = Set<Int>()
    
    for i in A {
        set.insert(i)
    }
    return set.count
}

var array: [Int] = []
dump(solution(&array))