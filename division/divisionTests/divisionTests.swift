//
//  divisionTests.swift
//  divisionTests
//
//  Created by John Garrigues on 8/21/21.
//

import XCTest
@testable import division

class divisionTests: XCTestCase {
    
    let calculatorBrain = CalculatorBrain()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_10DividedBy5Result2() {
        calculatorBrain.divideTwoNumbers(dividend:10, divisor:5) { (result, error) -> Void in
            XCTAssert(result == 2, "Result must be 2")
        }
    }
    func test_10DividedBy0MustBeNil() {
        calculatorBrain.divideTwoNumbers(dividend:10, divisor:0) { (result, error) -> Void in
            XCTAssertNil(result, "Result must be nil")
            XCTAssert(error!.domain == "Error dividing by Zero", "Error message should be 'Error dividing by Zero'")
        }
    }
    
    func test_TestDivisionTime() {
        measure {
            self.calculatorBrain.divideTwoNumbers(dividend: 10, divisor: 2, completion: { (result, error) -> Void in
                
            })
        }
    }
}
