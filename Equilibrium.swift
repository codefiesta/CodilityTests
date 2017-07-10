//
//  Equilibrium.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation


// The Codility test for finiding array equilibrium or -1 if not found
public func equilibrium(_ array: [Int]) -> Int {
    
    if array.isEmpty {
        return -1 // Nothing to do!
    }
    
    // 1) Find the total sum of values in the array
    var totalSum = 0
    for value in array {
        //totalSum = totalSum + value
        totalSum = Int.addWithOverflow(totalSum, value).0 // Prevent Overflow!
    }
    
    var runningSum = 0
    
    for i in 0..<array.count {
        
        let value = array[i]
        //let candidate = totalSum - runningSum - i
        let candidate = Int.subtractWithOverflow(Int.subtractWithOverflow(totalSum, runningSum).0, value).0 // Prevent Overflow!
        if candidate == runningSum {
            return i
        }
        runningSum = Int.addWithOverflow(runningSum, value).0
    }
    
    return -1
}
