//
//  FrogRiverOne.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

// https://codility.com/programmers/lessons/4-counting_elements/frog_river_one/
public func frogJump(_ x : Int, _ array : [Int]) -> Int {
    
    var jump = -1
    
    if array.isEmpty {
        return jump
    }
    
    
    var jumps = Set<Int>()
    
    for i in 0..<array.count {
        let value = array[i]
        if value <= x {
            jumps.insert(value)
        }
        
        if jumps.count == x {
            print("Jumping on \(x)")
            jump = i
            break
        }
    }
    
    return jump
}
