//
//  SPTests.swift
//  SPTests
//
//  Created by JSP_MacBookPro on 2020/10/31.
//

import XCTest
@testable import SP

class SPTests: XCTestCase {
    
    var sp: SP!
    
    override func setUp() {
        super.setUp()
        sp = SP()
    }
    
    override func tearDown() {
        sp = nil
        super.tearDown()
    }
    
    func test_숫자를_잘_더하자() {
        let r = sp.add(x: 100, y: 100)
        XCTAssertEqual(r, "200")
    }
    
    func test_최소값도_잘_더합니다() {
        let r = sp.add(x: 0, y: 0)
        XCTAssertEqual(r, "0")
    }
    
    func test_음수도_잘_더해야지() {
        let r = sp.add(x: -10, y: -10)
        XCTAssertEqual(r, "-20")
    }
    
    func test_최대값을_더하더라도_올바르게_계산되어야_한다() {
        let r = sp.add(x: Int.max, y: Int.max)
        XCTAssertEqual(r, "18446744073709552000")
    }
}
