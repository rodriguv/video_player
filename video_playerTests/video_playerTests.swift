//
//  video_playerTests.swift
//  video_playerTests
//
//  Created by Rodriguez, Vanessa on 1/26/16.
//  Copyright © 2016 Rodriguez, Vanessa. All rights reserved.
//

import XCTest
@testable import video_player

class video_playerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let adderDummy = Adder()
        let output = adderDummy.add2(2)
        XCTAssertEqual(output, 4, "Fail: Output should equal 3")
    
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    
    
}
