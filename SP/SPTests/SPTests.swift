//
//  SPTests.swift
//  SPTests
//
//  Created by JSP_MacBookPro on 2020/10/31.
//

import XCTest
@testable import SP

class SPTests: XCTestCase {
    
    var p1: 서울에서김서방찾기!
    
    override func setUp() {
        super.setUp()
        p1 = 서울에서김서방찾기()
    }

    override func tearDown() {
        p1 = nil
        super.tearDown()
    }

    func test_김서방_찾기() {
        let r = p1.solution(["Jane", "Kim"])
        XCTAssertEqual(r, "김서방은 1에 있다")
    }
}
