//
//  CountDiv.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

func countDiv(_ a : Int, _ b : Int, _ k : Int) -> Int {
    
    var count = 0
    for i in stride(from: a, to: b, by: 1) {
        if i % k == 0 {
            count += 1
            print(i)
        }
    }
    
    return count
}
