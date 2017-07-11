//
//  FrogJump.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

// given three integers X, Y and D, returns the minimal number of jumps from position X to a position equal to or greater than Y
// https://codility.com/programmers/lessons/3-time_complexity/frog_jmp/ - 100 / 100
public func frogJump(_ x : Int, _ y : Int, _ d : Int) -> Int {
    // write your code in Swift 3.0 (Linux)
    
    let distance = y - x
    if distance % d == 0 {
        return distance / d
    }

    return distance / d + 1
    
}
