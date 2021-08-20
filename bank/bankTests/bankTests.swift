//
//  bankTests.swift
//  bankTests
//
//  Created by John Garrigues on 8/19/21.
//

import XCTest
@testable import bank

class bankTests: XCTestCase {

    func test_InitialBalanceZero() {
        let account = Account()
        XCTAssertTrue(account.balance == 0, "Balance not zero")
    }

}
