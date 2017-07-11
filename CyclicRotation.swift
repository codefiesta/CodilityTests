//
//  CyclicRotation.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

public func shiftRight(_ array : [Int], _ amount : Int) -> [Int] {
    
    let mod = shift % array.count
    
    guard !array.isEmpty, mod != 0 else {
        return array
    }
    
    var isNegativeShift: Bool = false
    
    if shift < 0 {
        isNegativeShift = true
    }
    
    var shifted = [Int]()
    
    return shifted
}

extension Array {
    
    func shifted(by shiftAmount: Int) -> Array<Element> {
        
        // 1
        guard self.count > 0, (shiftAmount % self.count) != 0 else { return self }
        
        // 2
        let moduloShiftAmount = shiftAmount % self.count
        let negativeShift = shiftAmount < 0
        let effectiveShiftAmount = negativeShift ? moduloShiftAmount + self.count : moduloShiftAmount
        
        // 3
        let shift: (Int) -> Int = {
            return $0 + effectiveShiftAmount >= self.count ? $0 + effectiveShiftAmount - self.count : $0 + effectiveShiftAmount
        }
        
        // 4
        return self.enumerated().sorted(by: { shift($0.offset) < shift($1.offset) }).map { $0.element }
        
    }
}
