//
//  JSONBuilder.swift
//  AColorStoryTest
//
//  Created by Haik Ampardjian on 15.02.17.
//  Copyright © 2017 Haik Ampardjian. All rights reserved.
//

import XCTest
@testable import AColorStoryTest

class JSONBuilderTest: XCTestCase {
    func testmakeSells() {
        do {
            let sells = try JSONBuilder().sells(from: "sells")
            
            let first = sells.first
            XCTAssertNotNil(first)
            
            let testSell = first!
            XCTAssertEqual(testSell.name, "apples")
            XCTAssertEqual(testSell.baskets, [10,20,30])
            XCTAssertEqual(testSell.unitCosts, 0.26)
        }
        catch let error {
            XCTFail(error.localizedDescription)
        }
        
    }
}
