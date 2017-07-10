//
//  PrefixSet.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

public func prefixSet(_ array: [Int]) -> Int {
    
    var set: Set<Int> = Set(array)
    
    for i in 0..<array.count {
        let value = array[i]
        set.remove(value)
        if set.isEmpty {
            return i
        }
    }
    return 0
}
