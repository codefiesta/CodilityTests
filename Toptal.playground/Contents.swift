//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/**
 
 "Domino": We are given an S string, representing a domino tile chain. Each tile has an L-R format, where L and R are numbers from the 1..6 range. The tiles are separated by a comma. Some examples of a valid S chain are:
 
 1. "6-3"
 2. "4-3,5-1,2-2,1-3,4-4"
 3. "1-1,3-5,5-2,2-3,2-4"
 
 Devise a function that given an S string, returns the number of tiles in the longest matching group within S. A matching group is a set of tiles that match and that are subsequent in S. Domino tiles match, if the right side of a tile is the same as the left side of the following tile. "2-4,4-1" are matching tiles, but "5-2,1-6" are not.
 
 domino("1-1,3-5,5-2,2-3,2-4") should return 3.
 
 // If only 1 return 1, no matches return 1
 **/



func takeStringToInt(_ string: String) -> Int {

    
    var lefts: [Int] = []
    var rights: [Int] = []
    let values = string.components(separatedBy: ",")
    
    guard !values.isEmpty else {
        return 1
    }
    
    for value in values {
        let split = value.components(separatedBy: "-")
        
        let left = Int(split[0])!
        let right = Int(split[1])!
        lefts.append(left)
        rights.append(right)
    }
//    print(lefts)
//    print(rights)
    
    var max = 1
    
    var right = rights[0]
    for i in 1..<lefts.count {
        
        let left = lefts[i]

        print("Comparing \(right) == \(left)")
        
        if left == right {
            max += 1
            print("MATCH! \(left) == \(right)")
            
            
        }
        right = rights[i]
    }
    
    return max
}

func runTest() {
    //let input = "1-1,3-5,5-2,2-3,2-4"
    let input = "4-3,5-1,2-2,1-3,4-4"
    
    print("Solution -> \(takeStringToInt(input))")
}

runTest()