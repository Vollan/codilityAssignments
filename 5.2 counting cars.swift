//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : inout [Int]) -> Int {
    
    var counter = 0
    var returnValue = 0
    
    for i in A {
        if i  == 0 {
            counter += 1
        } else if i == 1 {
            returnValue += counter
        }
    }
    
    if returnValue > 1000000000 {
        return -1
    }
    
    return returnValue
}


var array = [0,1,0,1,1]
var array1 = [1]
var array2 = [0]
dump(solution(&array))
dump(solution(&array1))
dump(solution(&array2))



