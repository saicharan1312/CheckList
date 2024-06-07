//
//  CheckListTests.swift
//  CheckListTests
//
//  Created by Sai Charan Thummalapudi on 6/5/24.
//

import XCTest
@testable import CheckList

class CheckListTests: XCTestCase {

    var objCalculator: Calculator?
    override func setUpWithError() throws {
        //Initialize
        objCalculator = Calculator()
    }

    override func tearDownWithError() throws {
        //deinit
        objCalculator = nil
    }

    func testSum() throws {
        let result = objCalculator?.sum(a: 1.50, b: 1.00)
        XCTAssertEqual(result, 2.50)
    }

    func testSub() throws {
        let result = objCalculator?.sub(a: 1.50, b: 1.00)
        XCTAssertEqual(result, 0.50)
    }
    
    func testmul() throws {
        let result = objCalculator?.mul(a: 1.50, b: 1.00)
        XCTAssertEqual(result, 1.50)
    }
    
    func testdiv() throws {
        let result = objCalculator?.div(a: 1.50, b: 1.00)
        XCTAssertEqual(result, 1.50)
    }
    
    func testpower() throws {
        let result = objCalculator?.power(a: 1.50)
        XCTAssertEqual(result, 2.25)
    }
}
