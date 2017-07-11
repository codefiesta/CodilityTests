//
//  DiskIntersections.swift
//  
//
//  Created by Kevin McKee on 7/10/17.
//
//

import Foundation

//  Given an array A describing N discs, returns the number of (unordered) pairs of intersecting discs.
// The function should return −1 if the number of intersecting pairs exceeds 10,000,000.
public func numberOfDiscIntersections(_ array : [Int]) -> Int {
    
    let maxIntersections = 10000000
    var intersections = 0
    var disks: [(start: Int, end: Int)] = []
    
    for i in 0..<array.count {
        let radius = array[i]
        let start = i - radius
        let end = i + radius
        disks.append((start: start, end: end))
        print("Building disk \(i) [\(start), \(end)]")
    }
    
    disks.sort { (left, right) -> Bool in
        left.start < right.start
    }
    
    var starts =  [Int]()
    for disk in disks {
        print("Found disk [\(disk.start), \(disk.end)]")
        starts.append(disk.start)
    }
    
    for i in 0..<starts.count {
        
        let disk = disks[i]
        
        // Filter the start values that are less than or equal to the disk end
        // NOTE: This filter process will kill performance and should probably be moved into a binary search
        let filtered = starts.filter({ (value) -> Bool in
            return value <= disk.end
        })
        
        var count = filtered.count
        
        count -= (i+1)
        intersections += count
        
        if intersections > maxIntersections {
            return -1
        }
    }
    return intersections
}
