//
//  CountSemiPrimes.swift
//  
//
//  Created by Kevin McKee on 7/11/17.
//
//

import Foundation

fileprivate func countSemiPrimes(_ n : Int, _ p : [Int], _ q : [Int]) -> [Int] {
    var results = [Int](repeating: 0, count: p.count)
    
    if n < 4 {
        return [p.count]
    }
    
    let sieve = primesUpTo(n)
    print(sieve)
    
    for i in 0..<p.count {
        //let result = q[i] < 4 ? 0 : sieve[q[i]] - sieve[p[i]-1]
        print(q[i])
        let result = q[i] < 4 ? 0: 1
        results[i] = result
    }
    
    return results
}

fileprivate func sieve(_ numbers: [Int]) -> [Int] {
    
    if numbers.isEmpty { return [] }
    let p = numbers[0]
    assert(p > 1, "numbers must start at 2 or higher")
    let rest = numbers[1..<numbers.count]
    return [p] + sieve(rest.filter { $0 % p > 0 })
}

fileprivate func primesUpTo(_ max: Int) -> [Int] {
    //return [1] + sieve(Array(2...max))
    return sieve(Array(2...max))
}

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    if number <= 3 {
        return true
    }
    var i = 2
    while i*i <= number {
        if number % i == 0 {
            return false
        }
        i = i + 1
    }
    return true
}
