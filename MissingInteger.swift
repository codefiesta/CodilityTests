//
//  MissingInteger.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

// https://codility.com/programmers/lessons/4-counting_elements/missing_integer/
// 100 / 100
public func missingInteger(_ array : [Int]) -> Int {
    
    var missing = 1
    
    if array.isEmpty {
        return missing
    }
    
    
    // Create a set
    var set = Set<Int>(array)
    
    for i in 0..<array.count {
        let value = array[i]
        set.insert(value)
        
        while set.contains(missing) {
            missing += 1
        }
    }
    
    return missing
}
