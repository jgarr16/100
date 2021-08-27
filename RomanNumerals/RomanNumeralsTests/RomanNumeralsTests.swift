//
//  RomanNumeralsTests.swift
//  RomanNumeralsTests
//
//  Created by John Garrigues on 8/26/21.
//

import XCTest
@testable import RomanNumerals

class RomanNumeralsTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testConvert1ToRomanI() throws {
        // when an Int 1 is given, will convert to a Roman I
        let converter = Converter()
        let converter.translate(Int: 1, String: "I")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
