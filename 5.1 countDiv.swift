//: Playground - noun: a place where people can play

import UIKit

public func solution(_ A : Int, _ B : Int, _ K : Int) -> Int {
    
    if A == 0 {
        return (B - (B % K)) / K + 1
    } else {
        return (B - (B % K)) / K - (A - 1) / K
    }
}



dump(solution(1, 4, 2))