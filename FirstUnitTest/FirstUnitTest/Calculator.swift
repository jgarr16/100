//
//  Calculator.swift
//  FirstUnitTest
//
//  Created by John Garrigues on 8/26/21.
//

import Foundation


class Calculator {
    func sum(x: Int, y: Int) -> Int {
        return x + y
    }
    
    func multi(x: Int, y: Int) -> Int {
        return x * y
    }
    
    func power(x: Int, y: Int) -> Int {
        return Int(pow(Double(x), Double(y)))
    }
}
