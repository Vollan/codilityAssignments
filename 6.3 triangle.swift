//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    A.sort()
    
    if A.count >= 3 {
        for i in 0..<A.count-2 {
            if A[i] < A[i+1]+A[i+2] && A[i+1] < A[i]+A[i+2] && A[i+2] < A[i+1]+A[i] {
                return 1
            }
        }
    }
    return 0
}

var array4 = [-10,-5,-2,5,6,7,2,1]
var array3 = [-10,-5,-2]
var array2 = [10,50,5,1]
var array = [10,5,2,1,8,20]
dump(solution(&array))
dump(solution(&array2))
dump(solution(&array3))
dump(solution(&array4))
