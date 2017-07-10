//
//  BinaryGap.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

// Given a positive integer N, returns the length of its longest binary gap.
// The function should return 0 if N doesn't contain a binary gap.
public func binaryGap(_ N: Int) -> Int {
    
    var maxGap = 0
    var currentGap = 0
    var n = N
    
    // Skip tailing zero(s)
    while n > 0 && n % 2 == 0 {
        n /= 2
    }
    
    while n > 0 {
        var mod = n % 2
        if mod == 0 {
            currentGap += 1
        } else {
            if currentGap != 0 {
                maxGap = max(currentGap, maxGap)
                currentGap = 0
            }
        }
        n /= 2
    }
    
    return maxGap
}
