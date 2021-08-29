//
//  UtterancesTests.swift
//  UtterancesTests
//
//  Created by John Garrigues on 8/28/21.
//

import XCTest
@testable import Utterances

class UtterancesTests: XCTestCase {

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
    
    func test_utterancesIsBuenosDias() throws {
        // confirms that the utterance/phrase is defined correctly
        let utterances = Utterances()
        XCTAssertEqual(utterances.translations["good morning"],"¡Buenos días!")
    }

}


