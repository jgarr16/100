//
//  CalculatorTest.swift
//  FirstUnitTestTests
//
//  Created by John Garrigues on 8/26/21.
//

import XCTest
@testable import FirstUnitTest
class CalculatorTest: XCTestCase {

    func testSumMethod() throws {
        let calculator = Calculator()
        let result = calculator.sum(x: 5, y: 11)
        XCTAssertEqual(result, 16)
    }
    
    func testMultiMethod() throws {
        let calculator = Calculator()
        let result = calculator.multi(x: 5, y: 11)
        XCTAssertEqual(result, 55)
    }
    
    func testPowerMethod() throws {
        let calculator = Calculator()
        let result = calculator.power(x: 5, y: 11)
        XCTAssertEqual(result, 48828125)
    }

}
