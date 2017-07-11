//
//  Triangle.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

// returns 1 if there exists a triangular triplet for this array and returns 0 otherwise

/**
 
 A triplet (P, Q, R) is triangular if 0 ≤ P < Q < R < N and:
 
 A[P] + A[Q] > A[R],
 A[Q] + A[R] > A[P],
 A[R] + A[P] > A[Q].
 
 **/

public func triangle(_ array: [Int]) -> Int {
    
    if array.count < 3 {
        return 0
    }
    
    // Important!
    let sorted = array.sorted()
    
    print(sorted)
    
    for i in 0..<sorted.count - 2 {
        let P = sorted[i]
        let Q = sorted[i+1]
        let R = sorted[i+2]
        
        // Because the array is already sorted, we know that Q <= R and if 
        // P < 0, P + Q < R
        
        if P >= 0 && P > R - Q {
            return 1
        }
        
    }
    
    return 0
}
