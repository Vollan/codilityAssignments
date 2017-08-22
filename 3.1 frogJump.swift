//: Playground - noun: a place where people can play

import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    return Int(ceil(Double(Y-X)/Double(D)))
}


dump(solution(10, 90, 30))

//return X==Y ? 0 : Int(ceil(CGFloat((Y-X)/D)))
