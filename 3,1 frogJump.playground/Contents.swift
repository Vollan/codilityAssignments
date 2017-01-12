//: Playground - noun: a place where people can play

import UIKit

public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let addingNumber: CGFloat = ((Y-X)%D)==0 ? 0 : 0.4999999
    return X==Y ? 0 : Int(ceil(CGFloat((Y-X)/D)+addingNumber))
}


dump(solution(10, 90, 30))

//return X==Y ? 0 : Int(ceil(CGFloat((Y-X)/D)))