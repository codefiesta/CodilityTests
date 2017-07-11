//
//  Distinct.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

// This one is truly too easy 😏
public func solution(_ A : inout [Int]) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    let set = Set<Int>(A)
    return set.count
}
