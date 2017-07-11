//
//  PermCheck.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation


public func permCheck(_ array : [Int]) -> Int {
    
    if array.isEmpty {
        return 0
    }
    
    
    // Sort the array
    var sorted = array.sorted()
    
    for i in 0..<sorted.count {
        let value = sorted[i]
        
        // Perform a look ahead
        
        if value != i + 1 {
            return 0
        }
        
        //        if sorted.indices.contains(i+1) {
        //            let next = sorted[i+1]
        //
        //            if next != value+1 {
        //                return 0
        //            }
        //        }
        
    }
    
    return 1
}
