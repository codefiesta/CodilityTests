//
//  MinTapeSize.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

// Finds the minimum distance between the pieces of tape
public func minTapeSize(_ array : [Int]) -> Int {
    
    if array.isEmpty {
        return 0
    }
    
    var minSize = Int.max
    
    
    // 1 ) Find the sum total of the right most piece of tape
    var rightSum = 0
    for value in array {
        rightSum += value
    }
    
    var leftSum = 0
    
    // Loop through all the piece sizes and check their difference
    for i in 1..<array.count {
        let current = array[i-1]
        leftSum += current
        rightSum -= current
        
        var size = abs(leftSum - rightSum)
        print("The size is \(leftSum) - \(rightSum) = \(size)")
        if size < minSize {
            minSize = size
        }
    }
    
    return minSize
}
