//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    var lowestIndex = -1
    var lowestNumber = Float(Int.max)
    let count = A.count
    if count == 2 {
        return 0
    }
    
    for i in 0..<count-2 {
        
        let threeAvg = Float((A[i]+A[i+1]+A[i+2]))/3.0
        if threeAvg < lowestNumber {
            lowestNumber = threeAvg
            lowestIndex = i
        }
        
        let twoAvg = Float((A[i]+A[i+1]))/2.0
        if twoAvg < lowestNumber {
            lowestNumber = twoAvg
            lowestIndex = i
        }
    }
    
    if Float(A[count-1]+A[count-2])/2.0 < lowestNumber {
        lowestIndex = count-2
    }
    return lowestIndex
}
var array4 =  [10, 10, -1, 2, 4, -1, 2, -1]
var array3 = [1,2,3]
var array2 = [1,2]
var array1 = [4,2,2,5,6,7,1,2,5,1,1,1]
var array = [4,2,2,5,1,5,8]
dump(solution(&array))
dump(solution(&array1))
dump(solution(&array2))
dump(solution(&array3))
dump(solution(&array4))
