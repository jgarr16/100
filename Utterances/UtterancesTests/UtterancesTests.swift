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
    
    func test_utterancesEngIsEmptyString() throws {
        // confirms that the utterance/phrase is defined correctly
        let utterances = Utterances()
        XCTAssertEqual(utterances.engName,"")
    }

    func test_utterancesEspIsEmptyString() throws {
        // confirms that the utterance/phrase is defined correctly
        let utterances = Utterances()
        XCTAssertEqual(utterances.espName,"")
    }
    
    func test_buenosDiasEng() throws {
        let utterances = Utterances()
        XCTAssertEqual(buenosDias.engName,"good morning")
    }
    
    func test_buenosDiasEsp() throws {
        let utterances = Utterances()
        XCTAssertEqual(utterances.espName,"buenos días")
    }
}


