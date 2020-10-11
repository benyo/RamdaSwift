//
//  Math.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/11/20.
//

import XCTest
@testable import RamdaSwift


final class MathTests: XCTestCase {
    func testAdd() {
        
        let result = R.add(5, 2)
        let result2 = R.add(2)(5)
        
        XCTAssertEqual(result, 7)
        XCTAssertEqual(result2, 7)
    }
    
    func testDivide() {
        let num: Double = 5
        let num2: Double = 2
        let num3: Double = 0
        
        let result = R.divide(num, num2)
        let result2 = R.divide(num2)(num)
        let result3 = R.divide(num, num3)
        
        XCTAssertEqual(result, 2.5)
        XCTAssertEqual(result2, 2.5)
        XCTAssertEqual(result3, 0)
    }
    
    func testSubstract() {
        
        let result = R.subtract(5, 2)
        let result2 = R.subtract(2)(5)
        
        XCTAssertEqual(result, 3)
        XCTAssertEqual(result2, 3)
    }
    
    func testSum() {
        let numers = [1,2,3,4]
        
        let result = R.sum(numers)
        
        XCTAssertEqual(result, 10)
    }

    static var allTests = [
        ("testSum", testSum),
    ]
}
