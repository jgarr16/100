//
//  bankTests.swift
//  bankTests
//
//  Created by John Garrigues on 8/19/21.
//

import XCTest
@testable import bank

class bankTests: XCTestCase {
    
    private var account: Account!
    
    override func setUp() {
        super.setUp()
        self.account = Account()
    }
    
    func test_InitialBalanceZero() {
        XCTAssertTrue(self.account.balance == 0, "Balance not zero")
    }

    func test_DepositFunds() {
        account.deposit(100)
        XCTAssertEqual(100, self.account.balance)
    }
    
    func test_WithdrawFunds() {
        account.deposit(100)
        account.withdraw(100)
        XCTAssertEqual(0, self.account.balance)
        
    }
    
    override func tearDown() {
        super.tearDown()
        
    }

}
