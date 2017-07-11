//
//  PermMissingElement.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation


// Find exactly one missing element
public func permMissingElem(_ array : [Int]) -> Int {
    
    let elements = array.count + 1 // The addition of the missing element is critical!
    
    // Basic math formula is to find the sum of consecutive integers from 1 to N = N(N+1)/2
    // [1, 2, 3, 5] = 5 * 6 / 2 = 15
    // 15 - 5 - 3 - 2 - 1 = 4
    var sum = elements * (elements + 1) / 2
    
    for value in array {
        sum -= value
    }
    
    return sum
}
    
