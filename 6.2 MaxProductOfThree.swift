//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    
    A.sort()
    let counter = A.count
    var number = -100000
    dump(A)
    
    if A[counter-1] < 0 {
        return A[counter-2]*A[counter-1]*A[counter-3]
    }
    
    if A[0]*A[1] > A[counter-2]*A[counter-3] {
        number = A[0]*A[1]*A[counter-1]
    } else {
        number = A[counter-2]*A[counter-1]*A[counter-3]
    }
    return number
}


var array = [-3,-1,-2,-4]
dump(solution(&array))