//
//  MaxProductOf3.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

// https://codility.com/programmers/lessons/6-sorting/max_product_of_three/
public func maxProductOf3(_ array : [Int]) -> Int {
    
    guard !array.isEmpty, array.count > 2 else {
        return 0
    }
    
    // Sort the array to get the 2 edge cases of the array
    let sorted = array.sorted()
    
    var maxLeft = Int.min
    var maxRight = Int.min
    
    var p = sorted[0]
    var q = sorted[1]
    //var r = sorted[2]
    var r = sorted[sorted.count - 1]
    maxLeft = p * q * r
    
    
    p = sorted[sorted.count - 3]
    q = sorted[sorted.count - 2]
    r = sorted[sorted.count - 1]
    
    maxRight = p * q * r
    
    if maxLeft > maxRight {
        return maxLeft
    }
    
    return maxRight
}
