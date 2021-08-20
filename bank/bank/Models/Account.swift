//
//  Account.swift
//  bank
//
//  Created by John Garrigues on 8/19/21.
//

import Foundation

struct Account {
    var balance: Double = 0.0
    
    mutating func deposit(_ amount: Double) {
        self.balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        self.balance -= amount
    }
}

