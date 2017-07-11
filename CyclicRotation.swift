//
//  CyclicRotation.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

public func shiftRight(_ array : [Int], _ amount : Int) -> [Int] {
    
    var out = array
    var shift = amount
    
    if shift > array.count {
        return array
    }
    
    if shift < 0 {
        shift += array.count
    }
    
    return Array(out[shift ..< out.count] + out[0 ..< shift])
}
