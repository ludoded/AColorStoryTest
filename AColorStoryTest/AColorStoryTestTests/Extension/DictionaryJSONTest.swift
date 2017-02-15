//
//  DictionaryJSONTest.swift
//  AColorStoryTest
//
//  Created by Haik Ampardjian on 15.02.17.
//  Copyright © 2017 Haik Ampardjian. All rights reserved.
//

import XCTest
@testable import AColorStoryTest

class DictionaryJSONTest: XCTestCase {
    var dictionary: Dictionary<String, Any>!
    
    override func setUp() {
        super.setUp()
        dictionary = ["string": "Hello",
                      "arrayOfDoubles": [0.1, 10, 30],
                      "double": 0.1,
                      "int": 1,
                      "arrayOfInt": [0,1]]
    }
    
    override func tearDown() {
        dictionary = nil
        super.tearDown()
    }
    
    func testDictionaryProperValues() {
        XCTAssertEqual(dictionary.string(for: "string"), "Hello")
        XCTAssertEqual(dictionary.arrayOfInts(for: "arrayOfInt"), [0, 1])
        XCTAssertEqual(dictionary.double(for: "double"), 0.1)
    }
    
    func testDictionaryImproperValues() {
        XCTAssertEqual(dictionary.string(for: "arrayOfDoubles"), "")
        XCTAssertEqual(dictionary.string(for: "int"), "")
        XCTAssertEqual(dictionary.double(for: "string"), 0.0)
        XCTAssertEqual(dictionary.double(for: "int"), 0.0)
        XCTAssertEqual(dictionary.arrayOfInts(for: "string"), [])
        XCTAssertEqual(dictionary.arrayOfInts(for: "arrayOfDoubles"), [])
    }
}
