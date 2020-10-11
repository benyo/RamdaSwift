//
//  Math.swift
//  
//
//  Created by Benjamin Moreno Torres on 10/11/20.
//

import XCTest
@testable import RamdaSwift


final class MathTests: XCTestCase {
    func testSum() {
        let numers = [1,2,3,4]
        
        let result = R.sum(numers)
        
        XCTAssertEqual(result, 10)
    }
    static var allTests = [
        ("testSum", testSum),
    ]
}
