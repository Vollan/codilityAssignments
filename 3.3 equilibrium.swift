//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    let sum = A.reduce(0, +)
    
    var min = Int.max
    var first = 0
    var second = sum
    
    for i in 0..<A.count-1 {
        first = first + A[i]
        second = second - A[i]
        
        let number = abs(first - second)
        
        if number < min {
            min = number
        }
    }
    return min
}



var array: [Int] = [3,1]
dump(solution(&array))





