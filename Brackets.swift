//
//  Brackets.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

// Given a string S consisting of N characters, returns 1 if S is properly nested and 0 otherwise.
public func properNesting(_ string : String) -> Int {
    
    if string.isEmpty {
        return 1
    }
    
    var brackets: [Character] = []
    let chars = Array(string.characters)
    
    let bracketChars: [Character: Character] = [")": "(", "]" : "[", "}": "{"]
    let openChars = Array(bracketChars.values)
    let closingChars = Array(bracketChars.keys)
    
    for i in 0..<chars.count {
        
        let value = chars[i]
        
        // Push onto the array if we have an open character
        if openChars.contains(value) {
            brackets.append(value)
            print("Appending \(brackets)")
        }
        
        if closingChars.contains(value) {
            if brackets.isEmpty {
                // No open bracket - error!
                return 0
            } else {
                // Check for balance
                let lastOpened = brackets.last!
                let openVal = bracketChars[value]!
                
                if lastOpened != openVal {
                    return 0
                } else {
                    brackets.removeLast()
                }
                //print("Checking \(lastOpened) against \(value) = \(openVal)")
            }
        }
    }
    return brackets.isEmpty ? 1 : 0
}
