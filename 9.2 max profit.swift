//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    var low = Int.max
    var profit = 0
    
    for i in A {
        low = min(low, i)
        profit = max(profit, i-low)
    }
    return profit
}


var array2 = [5,4,3,2,1]
var array1: [Int] = []
var array = [23171, 21011, 21123, 21366, 21013, 21367]

dump(solution(&array))
dump(solution(&array1))
dump(solution(&array2))