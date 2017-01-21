//: Playground - noun: a place where people can play

import UIKit

public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var dict: [Int:Bool] = [:]
    
    for i in A {
        if i <= X {
            dict[i] = true
        }
        
        if dict.count == X {
            return A.index(of: i)!
        }
    }
    
    return -1
}

var array = [1,2]

dump(solution(2, &array))