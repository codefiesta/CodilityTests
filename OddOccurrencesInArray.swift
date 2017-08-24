//
//  OddOccurrencesInArray.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

// Find value that occurs in odd number of elements.
public func solution(_ A : inout [Int]) -> Int {
    var item = 0
    
    for value in A {
        item ^= value
    }
    
    return item
}
