//: Playground - noun: a place where people can play

import UIKit

public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {

    var secondArray = [Int](repeating: 0, count: N)
    
    var hightestNumber = 0
        for i in A {
            if i <= N && i >= 1 {
                let number = secondArray[i-1]+1
                secondArray[i-1] = number
                
                if number > hightestNumber {
                    hightestNumber = number
                }
            } else {
                secondArray = [Int](repeating: hightestNumber, count: N)
            }
        }
    return secondArray
}

var array2: [Int] = [7]
var array: [Int] = [1,2,6,3,5,7,1]
dump(solution(5, &array))
dump(solution(5, &array2))