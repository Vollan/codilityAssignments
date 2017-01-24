//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    
    var dict: [Int: Int] = [:]
    
    for i in A {
        if let value = dict[i] {
            dict[i] = value+1
        } else {
            dict[i] = 1
        }
    }
    
    if let maxValue = dict.values.max(), maxValue > A.count/2 {
        for (key, value) in dict {
            if value == maxValue {
                if let index = A.index(of: key) {
                    return index
                }
            }
        }
    }
    
    return -1
}

    /*for i in 0..<count {
        if A[i] != last {
            last = A[i]
            a = A
            a = a.filter { abs($0-a[i]) == 0 }
            if count/2 < a.count {
                return i
            }
        }
    }
    
    return -1 */

var array2 = [-1,-1,-1,1,1,2,3,5,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-6,-7,8,12]
var array = [1,1,1,2,3,3,3,3,3,3,3,4,5,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,6,621,51]
dump(solution(&array))
dump(solution(&array2))
